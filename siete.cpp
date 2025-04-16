#include <iostream>

/*
7. En un supermercado se tiene una promoción que se
aplica sobre el valor a pagar por la compra del cliente.
El valor a pagar depende de la cantidad de artículos que
compre el cliente, cada artículo tiene un valor de $
4000. La promoción consiste en lo siguiente: Si el
cliente compra 5 artículos o más, NO se le cobra el iva
del 16% sobre el valor a pagar, de lo contrario, es decir
si compra menos de 5 artículos se le cobra el iva del
16% sobre el valor a pagar. El algoritmo debe Mostrar
el subtotal, el iva y el valor final a pagar
*/


using namespace std;


int main()
{
    
    int TProductos, TP, ST, IVA;
    
    
    cout << "Dime cuantos productos tienes?\n";
    cin >> TProductos;


    if (TProductos>=5) {
        ST = TProductos * 4000;
        TP = ST;
        IVA = 0;
    }
    else
    {
        ST = TProductos * 4000;
        IVA = ST*0.16;
        TP = ST + IVA;
    }
    
    
    
    cout << "El SubTotal de tu compra es de: " << ST << "\n";
    cout << "El IVA de tu compra es de: " << IVA << "\n";
    cout << "El Total de tu compra es de: " << TP << "\n";

    return 0;
}
