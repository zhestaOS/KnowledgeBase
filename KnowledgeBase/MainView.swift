//
//  MainView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            InfoView()
                .tabItem {
                    Label("Info", systemImage: "globe")
                }
            HelloView()
                .tabItem {
                    Label("Hello", systemImage: "helm")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear.circle")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
