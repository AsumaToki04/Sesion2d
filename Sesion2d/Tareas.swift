//
//  Tareas.swift
//  Sesion2d
//
//  Created by DAMII on 18/11/24.
//

import SwiftUI

struct Tarea: Identifiable {
    let id = UUID()
    let titulo: String
    var completada: Bool
}
