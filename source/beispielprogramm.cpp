#include <cstdlib>
#include <vector>
#include <list>
#include <iostream>
#include <iterator>
#include <algorithm>

int main()
{
	std::vector<int> v0(10); //erzeugt Vektorconstainer mit Element 10

	for (auto& v : v0){ //solange Elemente vorhanden sind, fülle diese mit random Zahlen
		v = std::rand();
	}
	std::copy(std::begin(v0), std::end(v0), std::ostream_iterator<int>(std::cout, "\n"));//Kopiere den Container und gib diesen aus 
    std::cout<<"\n";

	std::list<int> l0(v0.size()); //erzeugt einen Listencontainer mit Größe von Vektor
	std::copy(std::begin(v0), std::end(v0), std::begin(l0));//Kopiere Elemente des Vektors 								in die Stelle des Elements der Liste
	std::list<int> l1{std::begin(l0), std::end(l0)};//Erzeugt eine Liste mit Größe u 								Elementen von l0
	std::reverse(std::begin(l1), std::end(l1));//kehrt elemente der Liste l1 um
	std::copy(std::begin(l1), std::end(l1), std::ostream_iterator<int>(std::cout, "\n"));//kopiert l1 und gibt diese aus
    std::cout<<"\n";

	l1.sort(); //sortiert l1
	std::copy(l1.begin(), l1.end(), std::ostream_iterator<int>(std::cout, "\n")); //gibt l1 aus
    std::cout<<"\n";

	std::generate(std::begin(v0),std::end(v0), std::rand); //füllt v0 mit randomwerten
	std::copy(v0.rbegin(),v0.rend(), std::ostream_iterator<int>(std::cout, "\n")); //gibt v0 in umgekehrter Reihenfolge aus

	return 0;
}
