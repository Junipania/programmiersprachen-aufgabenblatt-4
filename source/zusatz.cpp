#define CATCH_CONFIG_RUNNER
#include <catch.hpp>
#include <cmath>
#include <algorithm>
#include "circle.hpp"

TEST_CASE("copy_if","[copy_if]"){

    std::vector<Circle> circles{{5.0f}, {3.0f}, {8.0f}, {1.0f}, {5.0f}};
    std::vector<Circle> newcircles(circles.size());

    auto it = std::copy_if(circles.begin(), circles.end(), newcircles.begin(), [](Circle a){
        return a.getRadius() > 3.0f;
    });
    newcircles.resize(std::distance(newcircles.begin(),it));
    
    REQUIRE(std::all_of(newcircles.begin(), newcircles.end(), [](Circle a){
        return a.getRadius() > 3.0f;
    }));

}

int main(int argc, char* argv[]){

    return Catch::Session().run(argc, argv);

}
