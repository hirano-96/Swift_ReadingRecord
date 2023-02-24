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
                    .foregroundColor(Color.primary)
                
                VStack(spacing: 24) {
                    TextField("Name", text: $inputName)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 8.0))
                            .stroke(Color.primary))
                    
                    SecureField("Password", text: $inputPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(maxWidth: 280)
                        .overlay(RoundedRectangle(cornerSize: CGSize(width: 8.0, height: 8.0))
                            .stroke(Color.primary))
                }
                .frame(height: 100)
                
                HStack{
                    Button(action: {
                        print("ユーザー作成")
                    },
                    label: {
                        Text("Cerate User")
                            .fontWeight(.medium)
                            .frame(minWidth: 160)
                            .foregroundColor(Color.secondary)
                            .padding(12)
                            .cornerRadius(8)
                    })
                    
                    Button(action: {
                        print("ログイン処理")
                    },
                    label: {
                        Text("Login")
                            .fontWeight(.medium)
                            .frame(minWidth: 160)
                            .foregroundColor(Color.primary)
                            .padding(12)
                            .background(Color.gray)
                            .cornerRadius(8)
                    })
                    
                }
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
