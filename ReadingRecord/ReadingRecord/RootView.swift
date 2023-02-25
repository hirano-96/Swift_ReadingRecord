//
//  RootView.swift
//  ReadingRecord
//
//  Created by fuji on 2023/02/25.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var loginController: LoginController
    var body: some View {
        if loginController.isLogin{
            ContentView()
        }else{
            LoginView()
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
