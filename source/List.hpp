#ifndef BUW_LIST_HPP
#define BUW_LIST_HPP

#include <cstddef>

//List.hpp

template <typename T>
class List;

template <typename T>
struct ListNode{
    //Default Constructor
    ListNode():
        m_value(),
        m_prev(nullptr),
        m_next(nullptr){}

    //Custom Constructor
    ListNode(T const& v, ListNode* prev, ListNode* next):
        m_value(v),
        m_prev(prev),
        m_next(next){}

    //Variablen
    T m_value;
    ListNode* m_prev;
    ListNode* m_next;
};

template <typename T>
struct ListIterator{
    typedef ListIterator<T> Self;

    typedef T value_type;
    typedef T* pointer;
    typedef T& reference;
    typedef ptrdiff_t difference_type;
    typedef std::forward_iterator_tag iterator_category;    

    friend class List<T>;
    
    ListIterator():
        m_node(nullptr){}

    ListIterator(ListNode<T>* n):
        m_node(n){}

    reference operator*() const{
        return m_node->m_value;
    }

    pointer operator->() const{
        return (*m_node).m_value;
    }

    Self& operator++(){
        *this = next();
        return *this;
    }

    Self& operator--(){
        *this = prev();
        return *this;
    }

    Self operator++(int i){
        while(i > 0){
            *this++;
            ++i;
        }
        return *this;
    }

    bool operator==(const Self& x) const{
       return m_node == x.m_node;
    }

    bool operator!=(const Self& x) const{
        return m_node != x.m_node;
    }

    Self next() const{
        if(m_node)
            return ListIterator(m_node->m_next);
        else
            return ListIterator(nullptr);
    }

    Self prev() const{
        if(m_node)
            return ListIterator(m_node->m_prev);
        else
            return ListIterator(nullptr);
    }


  private:
    ListNode<T>* m_node = nullptr;
};

template <typename T>
struct ListConstIterator{
    friend class List<T>;
  public:
    //not yet implemented
  private:
    ListNode<T>* m_node = nullptr;
};

template <typename T>
class List{

   

  public:
    typedef T value_type;
    typedef T* pointer;
    typedef const T* const_pointer;
    typedef T& reference;
    typedef const T& const_reference;
    typedef ListIterator<T> iterator;
    typedef ListConstIterator<T> const_iterator;

    friend class ListIterator<T>;
    friend class ListConstIterator<T>;

    //Default Constructor
    List():
        m_size(0),
        m_first(nullptr),
        m_last(nullptr){}

    //Copy Constructor
    List(List<T> const& a){
        for (auto iterator = a.begin(); iterator!=nullptr; ++iterator){
            push_back(*iterator);
        }
    }
        
    //Move Constructor
    List(List&& a):
        m_size(a.m_size),       
        m_first(a.m_first),
        m_last(a.m_last){
        a.m_size = 0;
        a.m_first = nullptr;
        a.m_last = nullptr;
    }

    //isEmpty?
    bool empty() const{
        return m_first == nullptr;
    }

    //Returns Size
    std::size_t size() const{
        return m_size;
    }

    //add Node in front
    void push_front(T const& v){
        if (empty() == true){
            m_first = new ListNode<T>{v, nullptr, nullptr};
            m_last = m_first;
        }
        else{
            ListNode<T>* holder = m_first;
            m_first = new ListNode<T>{v, nullptr, holder};
            holder->m_prev = m_first;
        }
        ++ m_size;
    }

    //add Node in back
    void push_back(T const& v){
        if (empty() == true){
            m_first = new ListNode<T>{v, nullptr, nullptr};
            m_last = m_first;
        }
        else{
            ListNode<T>* holder = m_last;
            m_last = new ListNode<T>{v, holder, nullptr};
            holder->m_next = m_last;
        }
        ++m_size;
    }
    
    //inserts Node at pos
    void insert(iterator pos, T const& object){
        if(empty()== true){
            if(pos.prev() == nullptr && pos.next() == nullptr){
                push_front(object);
                ++m_size;
            }
            else{
                std::cout<<"List is empty";
            }
        }
        else{
            ListNode<T>* previous = pos.m_node->m_prev;
            ListNode<T>* newNode = new ListNode<T>{object, nullptr, nullptr};
            newNode->m_prev = previous;
            //previous->m_next = newNode;//löst zeigerfehler aus - warum?
            newNode->m_next = pos.m_node;
            pos.m_node->m_prev = newNode;
            ++m_size;
        }
    }

    //deletes first Node
    void pop_front(){
        if(empty() == false){
            ListNode<T>* holder = m_first->m_next;
            delete m_first;
            m_first = holder;
        }
        else{
            std::cout << "List is empty";
        }
        --m_size;
    }

    //deletes last Node
    void pop_back(){
        if(empty() == false){
            ListNode<T>* holder = m_last->m_prev;
            delete m_last;
            m_last = holder;
        }
        else{
            std::cout << "List is empty";
        }
        --m_size;
    }

    //clears list
    void clear(){
        while (m_size > 0){
            pop_front();
        }
    }

    //returns value of first Node
    T front(){
        return m_first->m_value;
    }

    //returns value of last Node
    T back(){
        return m_last->m_value;
    }

    iterator begin() const{
        if (m_first){
            return iterator(m_first);
        }
        else{
            return iterator(nullptr);
        }
    }

    iterator end() const{
        if (m_last){
            return iterator(m_last);
        }
        else{
            return iterator(nullptr);
        }
    }

    void reverse(){
        List<int> y;
	iterator front = begin();	
	iterator back = end();
        for (unsigned int i = 1; i < m_size/2; ++i){
		T hold = *front;
		*front = *back;
		*back = hold;
	}
    }

  //not implemented yet
  private:
    std::size_t m_size = 0;
    ListNode<T>* m_first = nullptr;
    ListNode<T>* m_last = nullptr;
};

template<typename T>
bool operator==(List<T> const& xs, List<T> const& ys){
    if(xs.size() == ys.size()){
        auto iterator_x = xs.begin();
        auto iterator_y = ys.begin();
        unsigned int counter = 0;

        for(int i = xs.size(); i>0; --i){
            if( *iterator_x == *iterator_y){
                counter += 1;
            }
            ++iterator_x;
            ++iterator_y;
        }
        if(counter == xs.size()){
            return true;
        }
        else{
            return false;
        }
    }
    else{
        return false;
    }
}

template<typename T>
bool operator!=(List<T> const& xs, List <T> const& ys){
    return !(xs==ys);
}

template<typename T>
List<T> reverse(List<T> const& a){
        List<int> y;
        for (auto iterator = a.end(); iterator!=nullptr; --iterator){
            y.push_back(*iterator);
        }
        return y;
}

#endif // #define BIW_List_HPP
