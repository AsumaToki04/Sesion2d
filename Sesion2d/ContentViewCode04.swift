//
//  ContentViewCode04.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ContentViewCode04: View {
    
    let titulo: String = "Datos Personales"
    let label1: String = "Nombres"
    let label2: String = "Apellidos"
    let label3: String = "Fecha Nac"
    
    var body: some View {
        VStack {
            Text(titulo)
                .font(.title)
                .fontWeight(.bold)
                .padding(20)
            
            HStack {
                Text(label1)
            }
            .padding(7)
            
            HStack {
                Text(label2)
            }
            .padding(7)
            
            HStack {
                Text(label3)
            }
            .padding(7)
        }
    }
}

struct ContentViewCode04_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewCode04()
    }
}
