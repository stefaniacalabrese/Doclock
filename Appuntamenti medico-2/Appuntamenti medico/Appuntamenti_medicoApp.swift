//
//  Appuntamenti_medicoApp.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 14/10/21.
//

import SwiftUI

@main
struct Appuntamenti_medicoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//            HomePageMedicoUIView()
//            RegistrazioneMedicoUIView()
//            LoginUIView()
            HomePageUIView()
//            Profile2UIView()
        }
    }
}
