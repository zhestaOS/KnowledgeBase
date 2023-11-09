//
//  MainView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct MainView: View {
    @AppStorage("titleOn") private var titleOn: Bool = true
    
    var body: some View {
        TabView {
            InfoView(titleOn: titleOn)
                .tabItem {
                    Label("Info", systemImage: "globe")
                }
            PhotoGalleryView()
                .tabItem {
                    Label("Photos", systemImage: "photo.on.rectangle.angled")
                }
            SettingsView(titleOn: $titleOn)
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
