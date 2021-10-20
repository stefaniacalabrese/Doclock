//
//  TodayUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 18/10/21.
//

import SwiftUI

struct Post: Identifiable {
    var colour: Color
    var hour: String
    var type: String
    var check: Bool
    
    var id = UUID() //non specifico il tipo ma eguagio direttamente al metodo per farmi creare subito il nuovo id
}

struct TodayUIView: View {
    
    
    @State var postChecked: Bool = false
    @State var postSelected: Post?
    @State var showDetailView: Bool = false
    
    var posts = [
        Post(colour:Color(red: 0.788235294117647, green: 0.4745098039215686, blue: 0.9450980392156862), hour: "9:30", type: "ECG", check: true),
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
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            
//            HStack {
//                Text("Appointments today")
//                    .font(.system(size: 25, weight: .heavy, design: .rounded))
//                    .frame(alignment: .leading)
//                    .padding()
//                Spacer()
//            }
            
            Text("\(itemFormatter.string(from: Date()))")
                .font(.system(size: 20, weight: .heavy, design: .rounded))
            List {
                ForEach(posts) { post in
                    HStack {
                        Circle()
                            .fill(post.colour)
                            .frame(width: 15, height: 15)
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
                        
                        Image(systemName: !post.check ? "chevron.right":"checkmark")
                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                        .foregroundColor(!post.check ? .gray:.green)
                        .padding(.horizontal, 6)
                        .padding(.vertical, 15)
//                        .opacity(post.check ? 0: 1)
                        .onTapGesture{
                            self.postChecked = post.check
                            self.postSelected = post
                            self.showDetailView = true
                        }
                            
                    }
                    .frame(height: 50)
                }
            }
            .sheet(isPresented: self.$showDetailView) {
                if let selectedPost = self.postSelected {
                    SheetUIView()
                }
            }
            .searchable(text: $searchText)
//            .navigationTitle("Appointments today")            
//            Divider()
//                        Spacer()
                        // Bleeds into TabView
//                        Rectangle()
//                            .frame(height: 0)
//                            .background(.thinMaterial)
        }
//        .background(.yellow)
    }
    
    private let itemFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .none
        return formatter
        
    //    // "10/8/16, 10:52 PM"
    //    formatter.timeStyle = .short
    //    formatter.dateStyle = .short
    //    formatter.string(from: currentDateTime)
    //
    //    // "Oct 8, 2016, 10:52:30 PM"
    //    formatter.timeStyle = .medium
    //    formatter.dateStyle = .medium
    //    formatter.string(from: currentDateTime)
    //
    //    // "October 8, 2016 at 10:52:30 PM GMT+8"
    //    formatter.timeStyle = .long
    //    formatter.dateStyle = .long
    //    formatter.string(from: currentDateTime)
    //
    //    // "October 8, 2016"
    //    formatter.timeStyle = .none
    //    formatter.dateStyle = .long
    //    formatter.string(from: currentDateTime)
    //
    //    // "10:52:30 PM"
    //    formatter.timeStyle = .medium
    //    formatter.dateStyle = .none
    //    formatter.string(from: currentDateTime)
    }()
}

struct TodayUIView_Previews: PreviewProvider {
    static var previews: some View {
        TodayUIView()
    }
}
