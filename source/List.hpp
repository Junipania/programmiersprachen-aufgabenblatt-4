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
    friend class List<T>;
  //not implemented yet
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
    }

    //returns value of first Node
    T front(){
        return m_first->m_value;
    }

    //returns value of last Node
    T back(){
        return m_last->m_value;
    }

  //not implemented yet
  private:
    std::size_t m_size = 0;
    ListNode<T>* m_first = nullptr;
    ListNode<T>* m_last = nullptr;
};

#endif // #define BIW_List_HPP
