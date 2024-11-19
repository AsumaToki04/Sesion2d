//
//  ContadorView.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ContadorView: View {
    @State private var contador = 0
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Contador: \(contador)")
                .font(.largeTitle)
                .padding()
            
            HStack {
                Button("Restar 1") {
                    contador -= 1
                }
                .padding()
                .background(.red)
                .foregroundColor(.white)
                .cornerRadius(8)
                
                Button("Sumar 1") {
                    contador += 1
                }
                .padding()
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            
            Button("Reiniciar") {
                contador = 0
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
    }
}

struct ContadorView_Previews: PreviewProvider {
    static var previews: some View {
        ContadorView()
    }
}
