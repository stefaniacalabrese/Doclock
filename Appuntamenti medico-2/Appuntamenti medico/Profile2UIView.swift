//
//  Profile2UIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 19/10/21.
//

import SwiftUI

import SwiftUI

var primaryColor = Color(red: 215/255, green: 233/255, blue: 253/255, opacity: 1)

struct Profile2UIView: View {
    // variabile per mostrare l'alert quando si preme logout
    @State private var showingLogoutAlert = false
    
    @State var nomeCampoUsername = "Username"
    @State var username = "Mario Rossi"
    
    @State var nomeCampoEmail = "email"
    @State var email = "mario.rossi@example.it"
    
    @State var nomeCampoTelephoneNumber = "Tel. number"
    @State var numeroDiTelefono = "+39029303030"
    
    @State var set_durations = "Set durations"
    
    var body: some View {
        GeometryReader{
            geometry in NavigationView{
                ZStack{
                    VStack() {
                        
                        Spacer().frame(height: geometry.size.height/9)
                        
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: geometry.size.width/5, height: geometry.size.width/5, alignment: .center)
                            .padding()
                        
                                ListItemForProfile(nomeCampo: $nomeCampoUsername, datoUtente: $username)
                            
                                ListItemForProfile(nomeCampo: $nomeCampoEmail, datoUtente: $email)
                            
                                ListItemForProfile(nomeCampo: $nomeCampoTelephoneNumber, datoUtente: $numeroDiTelefono)
                        
                        ListItemForProfile_arrow(nomeCampo: $set_durations)
                        
                        Spacer()
                }
                    
                    .aspectRatio(geometry.size, contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                    .padding(EdgeInsets(top: geometry.size.height/2, leading: 10, bottom: geometry.size.height/2, trailing: 10))
                    .navigationBarTitle(Text("Profile"), displayMode: .inline)
                    .navigationBarItems(trailing: Button("Logout", action: {
                        showingLogoutAlert = true
                    }
                    )
                    )
                }
                .background(primaryColor)
                .alert(isPresented: $showingLogoutAlert){
                    Alert(
                        title: Text("Logout"),
                        message: Text("Are you sure?"),
                        primaryButton: .destructive(Text("No"), action: {
                            
                        }),
                        secondaryButton: .default(Text("Yes"), action: {
                            
                        })
                    )
                }
            }
        }
        
    }
}

// elemento della lista modificabile
struct ListItemForProfile: View{
    @Binding var nomeCampo : String
    @Binding var datoUtente : String
    
    var body: some View{
        HStack{
            Text(nomeCampo)
            Spacer()
            Text(datoUtente)
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.white) // colore dell'elemento
        .contentShape(Rectangle()) // forma dell'elemento
        .cornerRadius(10.0) // arrotondamento dei bordi
    }
}

// elemento della lista modificabile - da implementare il trigger per passare alla selezione
struct ListItemForProfile_arrow: View{
    @Binding var nomeCampo : String
    
    var body: some View{
        HStack{
            Text(nomeCampo)
            Spacer()
            Image(systemName: "arrow.right")
        }
        .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
        .background(Color.white) // colore dell'elemento
        .contentShape(Rectangle()) // forma dell'elemento
        .cornerRadius(10.0) // arrotondamento dei bordi
    }
}

struct Profile2UIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 8")
            // .previewInterfaceOrientation(.portrait)
    }
}
