//
//  PatientUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 18/10/21.
//

import SwiftUI

struct Patient: Identifiable {
    var name: String
    var surname: String
    var username: String
    var email: String
    var number: Int
    var id = UUID() //non specifico il tipo ma eguagio direttamente al metodo per farmi creare subito il nuovo id
}

struct PatientUIView: View {
    
    @State private var search = ""

    var patients = [
        Patient(name: "Fabio", surname: "Molinario", username: "FabioMol", email: "ciao@icloud.com", number: 3333536789),

        Patient(name: "Pietro", surname: "Carofalo", username: "PietroCar", email: "ok@icloud.com", number: 3333333333),

        Patient(name: "Aldo", surname: "Baglio", username: "AldBag", email: "Ajeje@icloud.com", number: 3343637982),

        Patient(name: "Giovanni", surname: "Storti", username: "GiovStor", email: "taer@icloud.com", number: 3336447890),

        Patient(name: "Giacomo", surname: "Poretti", username: "GiacPor", email: "Scasazza@icloud.com", number: 3456789210),
        ]

    var body: some View {

//        NavigationView {
            VStack {
                List {
                    ForEach(patients) { patient in
                        Text(patient.name + " " + patient.surname)
                    }

                }.searchable(text: $search)
            }
//        }
//        .navigationBarTitle("Patients")
    }
}

struct PatientUIView_Previews: PreviewProvider {
    static var previews: some View {
        PatientUIView()
    }
}
