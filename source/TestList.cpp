#define CATCH_CONFIG_RUNNER
#include <catch.hpp>
#include "List.hpp"


TEST_CASE("emptysize","[emptysize]"){
    List<int> l1;
    REQUIRE(l1.empty() == true);
    REQUIRE(l1.size() == 0);
    
}

TEST_CASE("push","[push]"){
    List<int>l2;
    l2.push_front(42);
    l2.push_back(11);
    REQUIRE(l2.front() == 42);
    REQUIRE(l2.back() == 11);
    REQUIRE(l2.size() == 2);
}

TEST_CASE("pop","[pop]"){
    List<int>l3;
    l3.push_front(42);
    l3.push_back(11);
    l3.push_back(1);
    l3.pop_front();
    l3.pop_back();
    REQUIRE(l3.front() == 11);
    REQUIRE(l3.back() == 11);   
}

TEST_CASE("clear()","[clear()]"){
    List<int>l4;
    l4.push_front(1);
    l4.push_front(2);
    l4.push_front(3);
    l4.push_front(4);
    l4.clear();
    REQUIRE(l4.empty());
}

TEST_CASE("iteratoren","[iteratoren]"){
    List<int> l5;
    List<int> l6;
    auto b = l5.begin();
    auto e = l5.end();
    REQUIRE(b == e);
    l6.push_front(42);
    REQUIRE(*l6.begin() == 42);
}

TEST_CASE("copy constructor","[constructor]"){
    List<int> l7;
    l7.push_front(1);
    l7.push_front(2);
    l7.push_front(3);
    l7.push_front(4);
    List<int> l8{l7};
    REQUIRE(l7 == l8);
}

TEST_CASE("insert function","[insert]"){
    List<int> l9;
    l9.push_front(1);
    l9.push_front(1);
    l9.push_front(1);
    l9.push_front(1);
    l9.push_front(1);
    auto iterator = l9.begin();
    l9.insert(iterator, 42);
    REQUIRE(*l9.begin() == 42);
    REQUIRE(*iterator == 1);
}

TEST_CASE("reverse","[reverse]"){
    List<int> l10;
    l10.push_back(1);
    l10.push_back(2);
    l10.push_back(3);
    l10.push_back(4);
    l10.reverse();
    REQUIRE(*l10.begin() == 4);
    REQUIRE(*l10.end() == 1);
    List<int> newList = reverse(l10);
    REQUIRE(*newList.begin() == 1);
    REQUIRE(*newList.end() == 4);
}

/*TEST_CASE("move constructor","[constructor]"){
    List<int>list;
    list.push_front(1);
    list.push_front(2);
    list.push_front(3);
    list.push_front(4);
    List<int>list2 (std::move(list));
    REQUIRE(0 == list.size());
    REQUIRE(list.empty());
    REQUIRE(4 == list2.size());
}*/

int main ( int argc , char* argv[])
{
    return Catch::Session().run(argc, argv);
}
