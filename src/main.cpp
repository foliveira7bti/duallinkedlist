//
//  main.cpp
//
//  Created by Eiji Adachi Medeiros Barbosa
//

#include <iostream>
#include <cassert>
#include <string>
#include "TestList.h"
#include "LinkedList.h"

using namespace std;

int main(int argc, const char * argv[]) {
    
    assert( test_InsertBegin() );
    assert( test_RemoveBegin() );
    
    assert( test_InsertEnd() );
    assert( test_RemoveEnd() );
    
    assert( test_Search() );
    
    //assert( test_Insert() );
    assert( test_Remove() );

    // LinkedList* lista = new LinkedList();
    
    // string v[] = {"alpha","bravo","charlie","delta","echo","fox","golf","hotel","india","juliet"};
    
    // for(int i = 0; i < 10; i++)
    // {
    //     string valorInserido = v[i];
    //     lista->insertEnd(valorInserido);
    // }

    // lista->print();

    // lista->insert(2,"fernando");

    // lista->print();

    std::cout << "Todos testes OK" << std::endl;
    
    return 0;
}
