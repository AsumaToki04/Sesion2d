//
//  ContentState00View.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ContentState00View: View {
    
    @State private var nombre: String = ""
    @State private var mostrarMensaje: Bool = false
    
    var body: some View {
        VStack {
            TextField("Escribe tu nombre", text: $nombre)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Text("Hola, \(nombre)")
                .font(.title)
                .padding()
            
            Button(action: {
                mostrarMensaje = !nombre.isEmpty
            }) {
                Text("Mostrar mensaje")
                    .padding()
                    .background(nombre.isEmpty ? .gray : .blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .disabled(nombre.isEmpty)
            }
            
            
            if mostrarMensaje {
                Text("Hola, \(nombre), este es un mensaje oculto")
                    .font(.headline)
                    .padding()
                    .background(Color.pink.opacity(0.2))
                    .cornerRadius(8)
            }
        }
    }
}

struct ContentState00View_Previews: PreviewProvider {
    static var previews: some View {
        ContentState00View()
    }
}
