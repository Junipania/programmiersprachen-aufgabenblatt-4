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

int main ( int argc , char* argv[])
{
    return Catch::Session().run(argc, argv);
}
