//
//  LoginUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 16/10/21.
//

import SwiftUI

struct LoginUIView: View {
    @State private var username = ""
    @State private var email = ""
    @State private var number = ""
    @State private var password = ""
    
    @State private var hiddle = true
        
    var body: some View {
//        NavigationView {
            VStack {
//                Text("")
//                    .frame(width: 450, height: 0, alignment: .leading)
                Image("appIcon")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    //.scaledToFill()
                    //.scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .clipped()
                    .clipShape(Capsule())
                    .padding()
//                Text("")
//                    .frame(width: 450, height: 30, alignment: .leading)
                TextField("Username", text: $username)
//                            .padding(.all, 20)
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
                Text("")
                    .frame(width: 450, height: 30, alignment: .leading)
                
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
                    
                
                Text("")
                    .frame(width: 450, height: 0, alignment: .leading)
                Spacer()
                
                NavigationLink(destination: RegistrazioneMedicoUIView()) {
                    Text("Not registered yet?")
    //                        .fontWeight(.light)
    //                    .font(.system(.headline, design: .rounded))
                        .font(.system(size: 15, weight: .heavy, design: .default))
//                            .padding(.top, 200)

                        .foregroundColor(.black)
    //                        .cornerRadius(40)
    //                        .background(Color.black)
    //                        .cornerRadius(30)
    //                        .opacity(0.8)
                }
//                .frame(width: 150, height: 25, alignment: .center)
//                .background(Color(red: 0.659, green: 0, blue: 0.22))
                .cornerRadius(12)
            }
//            .padding(.vertical, 100)
            .background(Color.accentColor.opacity(0.35))
            .navigationBarBackButtonHidden(true)
//            .background(RoundedRectangle(cornerRadius: 8)
        }
//    }
}

struct LoginUIView_Previews: PreviewProvider {
    static var previews: some View {
        LoginUIView()
    }
}
