//
//  ContentViewCode04.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ContentViewCode04: View {
    
    let titulo: String = "Datos Personales"
    let label1: String = "Nombres:"
    let label2: String = "Apellidos:"
    let label3: String = "Fecha Nac:"
    
    @State private var nombres: String = ""
    @State private var apellidos: String = ""
    @State private var fecNac: String = ""
    @State private var datosCompletos: Bool = false
    @State private var mensajeError: String = ""
    
    var body: some View {
        VStack {
            Text(titulo)
                .font(.title)
                .fontWeight(.bold)
                .padding(20)
            
            HStack {
                Text(label1)
                TextField("", text: $nombres)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(7)
            
            HStack {
                Text(label2)
                TextField("", text: $apellidos)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(7)
            
            HStack {
                Text(label3)
                TextField("", text: $fecNac)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding(7)
            
            Button(action: {
                datosCompletos = !nombres.isEmpty && !apellidos.isEmpty && !fecNac.isEmpty
                
                if nombres.isEmpty {
                    mensajeError = "Ingresar nombres"
                } else if apellidos.isEmpty {
                    mensajeError = "Ingresar apellidos"
                } else if fecNac.isEmpty {
                    mensajeError = "Ingresar Fecha de nacimiento"
                } else {
                    mensajeError = ""
                }
            }) {
                Text("Procesar")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            
            if datosCompletos {
                Text("Nombres: \(nombres)")
                    .padding(3)
                Text("Apellidos: \(apellidos)")
                    .padding(3)
                Text("Fecha Nac: \(fecNac)")
                    .padding(3)
            } else {
                Text(mensajeError)
                    .foregroundColor(.red)
                    .cornerRadius(8)
            }
        }
    }
}

struct ContentViewCode04_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewCode04()
    }
}
