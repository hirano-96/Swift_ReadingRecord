//
//  ContentView.swift
//  ReadingRecord
//
//  Created by fuji on 2023/02/24.
//

import SwiftUI

struct LoginView: View {
    @State var inputName: String = ""
    @State var inputPassword: String = ""
    
    var body: some View {
        NavigationView{
            
            VStack(alignment: .center){
                Text("Reading Record").font(.system(size: 48,weight: .heavy))
                    .foregroundColor(Color.accentColor)
                
                VStack(spacing: 24) {
                    TextField("Name", text: $inputName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                    
                    SecureField("Password", text: $inputPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                }
                .frame(height: 100)
                
                Button(action: {
                    print("ログイン処理")
                },
                label: {
                    Text("ログイン")
                        .fontWeight(.medium)
                        .frame(minWidth: 160)
                        .foregroundColor(Color.white)
                        .padding(12)
                        .background(Color.accentColor)
                        .cornerRadius(8)
                })
                Spacer()
            }
            .frame(height: 400)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
