//
//  ContentView.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = ""
    @StateObject var vm = MainVM()
    
    var body: some View {
        ZStack {
            
            TabView(selection: $tabSelection) {
                MainView(vm: vm)
                    .tabItem {
                        Image("group")
                        Text("Главная")
                    }

                CatalogView()
                    .tabItem {
                        Image(systemName: "square.grid.2x2")
                        Text("Профиль")
                    }
                TrashView()
                    .tabItem {
                        Image(systemName: "trash.fill")
                        Text("Профиль")
                    }
                
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
