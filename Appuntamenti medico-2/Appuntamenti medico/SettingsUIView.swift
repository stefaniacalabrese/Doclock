//
//  SettingsUIView.swift
//  Appuntamenti medico
//
//  Created by calabresestefania on 28/07/1400 AP.
//

import SwiftUI

struct SettingsUIView: View {
    var body: some View {
        VStack{
        List {
            HStack {
                HStack {
                Image(systemName: "circle.fill")
                    .foregroundColor(Color(red: 0.788235294117647, green: 0.4745098039215686, blue: 0.9450980392156862))
                    .frame(width: 15, height: 15)
                Text("ECG")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: 160, height: 45, alignment: .leading)
                    Text("30 min")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 160, height: 45, alignment: .trailing)

            }
            HStack {
                HStack {
                Image(systemName: "circle.fill")
                        .foregroundColor(Color(red: 0.875, green: 0.342, blue: 0.361))
                    .frame(width: 15, height: 15)
                Text("Check-up")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: 160, height: 45, alignment: .leading)
                    Text("60 min")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 160, height: 45, alignment: .trailing)
            }
            HStack {
                HStack {
                Image(systemName: "circle.fill")
                        .foregroundColor(Color(red: 0.712, green: 0.948, blue: 0.306))
                    .frame(width: 15, height: 15)
                Text("Diagnostic check")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: 160, height: 45, alignment: .leading)
                Text("15 min")
                .font(.body)
                .fontWeight(.regular)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.trailing)
                .frame(width: 160, height: 45, alignment: .trailing)
            }

        HStack {
            HStack {
                Image(systemName: "circle.fill")
                    .foregroundColor(Color(red: 0.482, green: 0.868, blue: 0.999))
                    .frame(width: 15, height: 15)
                Text("Break")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.leading)
                }
                .frame(width: 160, height: 45, alignment: .leading)
                    Text("15 min")
                        .font(.body)
                        .fontWeight(.regular)
                        .foregroundColor(Color.black)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 160, height: 45, alignment: .trailing)
            }
            HStack {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .foregroundColor(.gray)
                        .frame(width: 30, height: 30, alignment: .center)
        }
            .frame(width: 320, height: 45, alignment: .leading)
            }
 Spacer()
        }
        }
    }

struct SettingsUIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsUIView()
    }
}

