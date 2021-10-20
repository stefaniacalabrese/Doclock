//
//  RegistrazioneMedicoUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 15/10/21.
//

import SwiftUI

struct RegistrazioneMedicoUIView: View {
    
    @State private var username = ""
    @State private var email = ""
    @State private var number = ""
    @State private var password = ""
    
    @State private var hiddle = true
    
    var body: some View {
//        ScrollView {
            VStack {
//                Spacer()
                Image(systemName: "person.fill.badge.plus")
                    .resizable()
//                    .edgesIgnoringSafeArea(.all)
                    //.scaledToFill()
//                    .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 160, height: 160)
//                    .clipped()
//                    .clipShape(Capsule())
                    .padding()
//                Spacer()
                TextField("Username", text: $username)
//                            .padding(.all, 20)
                            .foregroundColor(Color.black)
                            .font(.system(size: 20, weight: .heavy, design: .default))
                            .frame(width: 350, height: 50, alignment: .leading)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(50)
                TextField("E-mail", text: $email)
                            .foregroundColor(Color.black)
                            .font(.system(size: 20, weight: .heavy, design: .default))
                            .frame(width: 350, height: 50, alignment: .leading)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(50)
                TextField("Tel. Number", text: $number)
                            .foregroundColor(Color.black)
                            .font(.system(size: 20, weight: .heavy, design: .default))
                            .frame(width: 350, height: 50, alignment: .leading)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .cornerRadius(50)
                
                ZStack {
                    HStack {
                        if self.hiddle {
                            SecureField("Password", text: $password)
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 20, weight: .heavy, design: .default))
                                        .frame(width: 350, height: 50, alignment: .leading)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .cornerRadius(50)
                                        .overlay(Button(action: {hiddle.toggle()}) {
                                            Image(systemName: "eye.slash.fill")
                                        }
                                                    .padding(20)
                                                    .foregroundColor(.gray)
                                                 , alignment: .trailing)
                        }
                        else {
                            TextField("Password", text: $password)
                                        .foregroundColor(Color.black)
                                        .font(.system(size: 20, weight: .heavy, design: .default))
                                        .frame(width: 350, height: 50, alignment: .leading)
                                        .textFieldStyle(RoundedBorderTextFieldStyle())
                                        .cornerRadius(50)
                                        .overlay(Button(action: {hiddle.toggle()}) {
                                            Image(systemName: "eye.fill")
                                        }
                                                    .padding(20)
                                                    .foregroundColor(.green)
                                                 , alignment: .trailing)
                        }
//                        .overlay(Button(action: {hiddle.toggle()}) {
//                            Image(systemName: self.hiddle ?  "eye.fill":
//                            "eye.slash.fill")
//                        })
                        
                    }
                }
                
//                Spacer(minLength: 40)

                NavigationLink(destination: TabBarHomeUIView()) {
                    Text("Continue")
                        .fontWeight(.heavy)
                        .font(.system(.headline, design: .rounded))
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(30)
    //                    .opacity(0.8)
                }
                
                Spacer()
                
                Text("")
                    .frame(width: 450, height: 0)

                
                NavigationLink(destination: LoginUIView()) {
                    Text("Already a member?")
    //                            .fontWeight(.light)
    //                            .font(.system(.headline, design: .rounded))
                        .font(.system(size: 15, weight: .heavy, design: .default))
                        .foregroundColor(.black)
    //                    .cornerRadius(40)
    //                    .background(Color.black)
    //                    .cornerRadius(30)
    //                    .opacity(0.8)
                }
            }
//        }
        .background(Color.accentColor.opacity(0.35))
        .navigationBarBackButtonHidden(true)
//        .background(RoundedRectangle(cornerRadius: 8)
//          .foregroundColor(.white)
//            .shadow(color: Color("Shadow"), radius: 8, x: 0, y: 4))
    }
}

struct RegistrazioneMedicoUIView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrazioneMedicoUIView()
    }
}
