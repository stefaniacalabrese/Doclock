//
//  TabBarHomeUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 17/10/21.
//

import SwiftUI

struct TabBarHomeUIView: View {
    
        init(){
            UITableView.appearance().backgroundColor = .clear
//            UINavigationBar.appearance().backgroundColor = .systemPink
            }
    
    var body: some View {
        TabView {
//            DetailUIView(post: Post(title: "Cucciolo", image: "cucciolo"))
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
            
//            VStack {
//                        Text("Hello, World!")
//                        Divider()
//                        Spacer()
//                        // Bleeds into TabView
//                        Rectangle()
//                            .frame(height: 0)
//                            .background(.thinMaterial)
//                    }
//                    .background(Color.accentColor.opacity(0.35))
//                    .tabItem {
//                        Text("Tab 1")
//                        Image(systemName: "wifi")
//                    }
            
            TodayUIView()
                .background(Color.accentColor.opacity(0.35))
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Today")
                }
            CalendarHomeUIView()
                .background(Color.accentColor.opacity(0.35))
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Calendar")
                }
            PatientUIView()
                
                .background(Color.accentColor.opacity(0.35))
                .tabItem {
                    Image(systemName: "list.bullet.rectangle")
                    Text("Patients")
                }
            ProfileUIView()
                .background(Color.accentColor.opacity(0.35))
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
//        .navigationTitle("Ciao")
        .navigationBarBackButtonHidden(true)
    }
}

struct TabBarHomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarHomeUIView()
            .previewDevice("iPhone 11")
    }
}
