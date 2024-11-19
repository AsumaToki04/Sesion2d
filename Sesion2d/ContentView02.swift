//
//  ContentView02.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ContentView02: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Bienvenido")
                
                NavigationLink(destination: ContentDetailView()) {
                    Text("Ir a Detalle")
                        .padding()
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .navigationTitle("Inicio")
        }
    }
}

struct ContentDetailView: View {
    var body: some View {
        Text("Este es el detalle")
            .font(.title)
            .padding()
    }
}

struct ContentView02_Previews: PreviewProvider {
    static var previews: some View {
        ContentView02()
    }
}
