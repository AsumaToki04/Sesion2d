//
//  ContentView01.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ContentView01: View {
    
    let mensaje1 = "Hola, SwiftUI!!"
    let mensaje2 = "Has interactuado con el botón"
    
    var body: some View {
        VStack {
            Text(mensaje1)
            Button("Presioname") {
                print(mensaje2)
            }
            .padding()
            .background(.orange)
            .foregroundColor(.white)
            .cornerRadius(8)
            
            .padding(4)
            .background(.green)
            .cornerRadius(8)
            
            .padding(4)
            .background(.red)
            .cornerRadius(8)
            
            .padding(4)
            .background(.blue)
            .cornerRadius(8)
        }
    }
}

struct ContentView01_Previews: PreviewProvider {
    static var previews: some View {
        ContentView01()
    }
}
