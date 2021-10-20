//
//  ProfileUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 19/10/21.
//

import SwiftUI

struct ProfileUIView: View {
    
    @State private var showingLogoutAlert = false
    
    var body: some View {
        VStack{
            Image(systemName: "person.fill")
                .resizable()
//                    .edgesIgnoringSafeArea(.all)
                //.scaledToFill()
//                    .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
//                    .clipped()
//                    .clipShape(Capsule())
//                .padding()
            List {
                HStack {
                    Text("Username")
//                        .foregroundColor(.red)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))

                    Spacer()
    //                Image(systemName: "arrow.down.left.circle.fill")
                    
                    Text("Username")
//                        .foregroundColor(.red)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                }
                HStack {
                    Text("E-mail")
//                        .foregroundColor(.red)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))

                    Spacer()
                    
                    Text("mario.rossi@icloud.it")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
    //                Image(systemName: "arrow.down.left.circle.fill")
//                    Image(systemName: "escape")
//                        .foregroundColor(.red)
//                        .font(.system(size: 20, weight: .heavy, design: .rounded))
                }
                HStack {
                    Text("Tel.Number")
//                        .foregroundColor(.red)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))

                    Spacer()
    //                Image(systemName: "arrow.down.left.circle.fill")
                    
                    Text("3313820598")
//                        .foregroundColor(.red)
                        .font(.system(size: 20, weight: .semibold, design: .rounded))
                }

            }
            
            Button(action: {showingLogoutAlert = true
            }) {
                Text("Logout")
                        .fontWeight(.heavy)
                        .font(.system(.headline, design: .rounded))
                        .padding(10)
                        .padding(.horizontal, 10)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(12)
                    
            }
            Spacer(minLength: 50)

        }
        .alert(isPresented: $showingLogoutAlert){
            Alert(
                title: Text("Logout"),
                message: Text("Are you sure?"),
                primaryButton: .default(Text("No"), action: {
                    
                }),
                secondaryButton: .destructive(Text("Yes"), action: {
                    
                })
            )
        }
//        .navigationTitle("Profile")
    }
}

struct ProfileUIView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileUIView()
    }
}
