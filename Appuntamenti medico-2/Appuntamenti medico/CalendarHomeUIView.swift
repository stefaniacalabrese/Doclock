//
//  TodayHomeUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 17/10/21.
//

import SwiftUI

struct CalendarHomeUIView: View {
    
    var posts = [
        Post(colour: .pink, hour: "9:30", type: "ECG", check: true),
        Post(colour: .red, hour: "10:00", type: "Check-Up", check: true),
        Post(colour: .cyan, hour: "11:00", type: "Break", check: true),
        Post(colour: .green, hour: "11:15", type: "Diagnostick check", check: false),
        Post(colour: .pink, hour: "12:00", type: "ECG", check: false),
        Post(colour: .red, hour: "10:00", type: "Check-Up", check: false),
        Post(colour: .black, hour: "10:00", type: "Lunch", check: false),
        Post(colour: .red, hour: "10:00", type: "Check-Up", check: false),
        Post(colour: .red, hour: "10:00", type: "Check-Up", check: false),
        Post(colour: .red, hour: "10:00", type: "Check-Up", check: false),
        ]
    
    @State private var date = Date()
    @State private var searchText = ""
    
    var body: some View {
        
//        NavigationView {
            VStack {
                DatePicker("Data prenotazioni", selection: $date)
//                    .scaleEffect(x:0.8, y: 0.8)        //Ho provato con scale effect per avere un caledario più piccolo ma cambia solo la dimensione dei caratteri mentre la superficie occupata è sempre la medesima
                    .datePickerStyle(.compact)
                    .colorMultiply(Color.white)
                    .foregroundColor(Color.yellow)
                    .padding()
                
                VStack {
                    List {
                        ForEach(posts) { post in
                            HStack {
                                NavigationLink(destination: Text("Ciao")) {
                                    Circle()
                                        .fill(post.colour)
                                        .frame(width: 30, height: 30)
        //                                .opacity((post.type != "Lunch") ? 1:0)
        //                            Image(systemName: "hare")
        //                                .opacity((post.type != "Lunch") ? 0:1)
                                    VStack {
                                        Text(post.type)
                                            .font(.system(size: 17, weight: .semibold, design: .rounded))
                                            .padding(.horizontal, -10)
                                        Text(post.hour)
                                            .font(.system(size: 15, weight: .medium, design: .rounded))

                                    }
                                    .frame(width: 140, alignment: .leading)
                                    .padding()
                                    Spacer()
                                        Image(systemName: "checkmark.circle")
                                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                                        .foregroundColor(.green)
                                        .opacity(post.check ? 1: 0)
        //                                    .resizable()
        //                                    .frame(width: 20, height: 20)
        //                                    .aspectRatio(contentMode: .fit)
        //                                    .clipShape(Circle())
                                    
                                }
                            }
                            .frame(height: 50)
                        }
                    }
                    .searchable(text: $searchText)
//                    .navigationTitle("All appointments")
                }
                
            }
           
//        }
//        .aspectRatio(contentMode: .fill)
    }
}

struct CalendarHomeUIView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarHomeUIView()
    }
}
