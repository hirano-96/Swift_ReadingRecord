//
//  CreateUserView.swift
//  ReadingRecord
//
//  Created by fuji on 2023/02/26.
//

import SwiftUI

struct CreateUserView: View {
        @ObservedObject var loginController: LoginController = LoginController()
        @State var inputName: String = ""
        @State var inputPassword: String = ""
        @State var createFlag: Bool = false

        var body: some View {
            NavigationView{
                VStack(alignment: .center){
                    Text("Create User").font(.system(size: 48,weight: .heavy))
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
                            createFlag = loginController.createUser(name: self.inputName, password: self.inputPassword)
                        },
                        label: {
                            Text("Create")
                                .fontWeight(.medium)
                                .frame(maxWidth: 260)
                                .foregroundColor(Color.primary)
                                .padding(8)
                                .background(Color.gray)
                                .cornerRadius(8)
                        })
                        .fullScreenCover(isPresented: $createFlag) {
                            LoginView()
                        }
                    }
                .frame(height: 200)
            }
        }
    }
}

struct CreateUserView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserView()
    }
}
