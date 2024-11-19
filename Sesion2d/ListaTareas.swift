//
//  ListaTareas.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ListaTareaView: View {
    let listaTareas: [Tarea] = [
        Tarea(titulo: "Compras de la semana", completada: false),
        Tarea(titulo: "Avanzar la tesis", completada: true),
        Tarea(titulo: "Revisar los exámenes", completada: false)
    ]
    
    var body: some View {
        VStack {
            List(listaTareas) { item in
                HStack {
                    Text(item.titulo)
                        .padding(8)
                    Spacer()
                    Image(
                        systemName: item.completada ?
                        "checkmark.circle.fill" : "circle"
                    )
                    .foregroundColor(item.completada ? .green : .gray)
                }
            }
        }
    }
}

struct ListaTareaView_Preview: PreviewProvider {
    static var previews: some View {
        ListaTareaView()
    }
}
