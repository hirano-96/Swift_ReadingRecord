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
}
