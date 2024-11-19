//
//  ListaTarea02View.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct ListaTarea02View: View {
    @State private var listaTareas: [Tarea] = [
        Tarea(titulo: "Compras de la semana", completada: false),
        Tarea(titulo: "Avanzar la tesis", completada: true),
        Tarea(titulo: "Revisar los exámenes", completada: false)
    ]
    @State private var nuevaTarea = ""
    
    var body: some View {
        VStack {
            HStack {
                TextField("Ingresa una nueva tarea", text: $nuevaTarea)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.leading)
                Button("Agregar") {
                    agregarTarea()
                }
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
            }
            
            List {
                ForEach(listaTareas.indices, id: \.self) { index in
                    HStack {
                        Text(listaTareas[index].titulo)
                        Spacer()
                        Button(action: {
                            listaTareas[index].completada.toggle()
                        }) {
                            Image(
                                systemName: listaTareas[index].completada ?
                                "checkmark.circle.fill" : "circle"
                            )
                            .foregroundColor(listaTareas[index].completada ? .green : .gray)
                        }
                    }
                }
                .onDelete(perform: eliminarTarea)
            }
        }
    }
    
    func agregarTarea() {
        guard !nuevaTarea.isEmpty else {
            return
        }
        let nueva = Tarea(titulo: nuevaTarea, completada: false)
        listaTareas.append(nueva)
        nuevaTarea = ""
    }
    
    func eliminarTarea(at offset: IndexSet) {
        listaTareas.remove(atOffsets: offset)
    }
}

struct ListaTarea02View_Previews: PreviewProvider {
    static var previews: some View {
        ListaTarea02View()
    }
}
