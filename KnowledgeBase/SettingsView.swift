//
//  SettingsView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @Binding var titleOn: Bool
    
    @State private var name = ""
    @State private var isPushesAllowed = false
    
    var genders = ["Male", "Female"]
    @State private var selectedGender = "Female"
    
    @State private var celsius: Double = 0
    
    var body: some View {
        Form {
            Section (header: Text("Работает")) {
                Text(colorScheme == .light ? "Light Theme enabled" : "Dark Theme enabled")
                Toggle("Enable show title", isOn: $titleOn)
                Text(titleOn ? "Navigation title enabled" : "Navigation title disabled")
                
            }

            Section (header: Text("Прототипы")) {
                TextField("Name", text: $name)
                Picker("Picker", selection: $selectedGender) {
                    ForEach(genders, id: \.self) {
                        Text($0)
                    }
                }
                Slider(value: $celsius, in: -25...55)

            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(titleOn: .constant(true))
    }
}
