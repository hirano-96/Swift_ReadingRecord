//
//  MainView.swift
//  ReadingRecord
//
//  Created by fuji on 2023/02/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack(alignment: .center){
                Text("Books").font(.system(size: 48,weight: .heavy))
                    .foregroundColor(Color.primary)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
