//
//  ContentView.swift
//  ReadingRecord
//
//  Created by fuji on 2023/02/24.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var loginController: LoginController = LoginController()
    @State var inputName: String = ""
    @State var inputPassword: String = ""
    @State var loginFlag: Bool = false
    @State var createFlag: Bool = false

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
                    
                    Button(action: {
                        loginFlag = loginController.loginApp(name: self.inputName, password: self.inputPassword)
                    },
                    label: {
                        Text("Login")
                            .fontWeight(.medium)
                            .frame(maxWidth: 260)
                            .foregroundColor(Color.primary)
                            .padding(8)
                            .background(Color.gray)
                            .cornerRadius(8)
                    })
                    .fullScreenCover(isPresented: $loginFlag) {
                        MainView()
                    }
                }

                .frame(height: 200)
                
                Button(action: {
                    createFlag = true
                },
                label: {
                    Text("Cerate User")
                        .fontWeight(.medium)
                        .frame(minWidth: 160)
                        .foregroundColor(Color.secondary)
                        .padding(12)
                        .cornerRadius(8)
                })
                .fullScreenCover(isPresented: $createFlag) {
                    CreateUserView()
                }
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
