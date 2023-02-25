//
//  LoginController.swift
//  ReadingRecord
//
//  Created by fuji on 2023/02/25.
//

import Foundation

class LoginController: ObservableObject{
    @Published var isNavigateToLoginView = false
    @Published var isNavigateToPasswordResetView = false
    @Published var isLogin = false
    @Published var isCreated = false
    
    func createUser(name: String, password: String) -> Bool{
        // SQLiteにユーザ情報を登録する処理を呼ぶ
        isCreated = true
        return isCreated
    }
    
    func loginApp(name: String, password: String) -> Bool{
        // SQLiteからユーザ情報を取得する処理を呼ぶ
        isLogin = true
        return isLogin
    }
}
