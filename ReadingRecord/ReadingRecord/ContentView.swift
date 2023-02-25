//
//  ContentView.swift
//  ReadingRecord
//
//  Created by fuji on 2023/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem{
                    Text("HOME")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
