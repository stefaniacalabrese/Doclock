//
//  HomePageUIView.swift
//  Appuntamenti medico
//
//  Created by molinariofabio on 15/10/21.
//

import SwiftUI

struct HomePageUIView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            VStack {
//                Text("Wellcome in doClock!")
//                    .font(.system(size: 35, weight: .light, design: .rounded))
//                    .italic()
//                    .fontWeight(.heavy)
//                    .frame(alignment: .center)
//        //           .font(.system(.headline, design:.rounded))
                Image("appIcon")
                    .resizable()
//                    .edgesIgnoringSafeArea(.all)
                        //.scaledToFill()
//                        .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
                    .clipped()
                    .clipShape(Capsule())
//                Spacer(minLength: 20)
                Text("Let's start organizing your schedule in a better way")
                    .font(.system(size: 20, weight: .heavy, design: .rounded))
                    .italic()
                    .frame(/*minWidth: <#T##CGFloat?#>, idealWidth: <#T##CGFloat?#>, */maxWidth: 260/*, minHeight: <#T##CGFloat?#>, idealHeight: <#T##CGFloat?#>, maxHeight: <#T##CGFloat?#>, alignment: */)
                
//                Spacer()
                
                Text("")
                    .frame(width: 450, height: 50)
                
                NavigationLink(destination: LoginUIView()) {
                        Text("Login")
                            .fontWeight(.heavy)
                            .font(.system(.headline, design: .rounded))
                        .padding(.horizontal ,20)
                        .padding(.vertical ,10)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(30)
        //                    .opacity(0.8)
                }
                .frame(width: 184, height: 60, alignment: .center)
    //                .background(Color(red: 0.659, green: 0, blue: 0.22))
                .cornerRadius(12)
                
                NavigationLink(destination: RegistrazioneMedicoUIView()) {
                    Text("Sign in")
                        .fontWeight(.heavy)
                        .font(.system(.headline, design: .rounded))
                        .padding(.horizontal ,15)
                        .padding(.vertical ,10)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .background(Color.black)
                        .cornerRadius(30)
    //                    .opacity(0.8)
                }
                .frame(width: 184, height: 60, alignment: .center)
    //                .background(Color(red: 0.659, green: 0, blue: 0.22))
                .cornerRadius(12)
                Spacer()
                
                Text("To continue without an account")
                    .fontWeight(.heavy)
    //                    .font(.system(.headline, design: .rounded))
                    .frame(alignment: .top)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .font(.system(size: 15, weight: .heavy, design: .default))
    //                .padding(.bottom, 100)
                .padding(.top, 15)
                .foregroundColor(.black)
    //                    .cornerRadius(40)
    //                    .background(Color.black)
    //                    .cornerRadius(30)
    //                    .opacity(0.8)
//                Spacer(minLength: 80)
            }
            .background(Color.accentColor.opacity(0.35))
            .navigationTitle("Wellcome in doClock")
//            .font(.system(size: 40, weight: .light, design: .rounded))
    //        .background(RoundedRectangle(cornerRadius: 8)
    //          .foregroundColor(.white)
    //            .shadow(color: Color("Shadow"), radius: 8, x: 0, y: 4))
        }
    }
}

struct HomePageUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageUIView()
    }
}
