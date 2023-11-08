//
//  SettingsView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var name = ""
    @State private var isPushesAllowed = false
    
    var genders = ["Male", "Female"]
    @State private var selectedGender = "Female"
    
    @State private var celsius: Double = 0
    
    var body: some View {
        Form {
            Section {
                TextField("Name", text: $name)
                Toggle("Allow pushes", isOn: $isPushesAllowed)
            }

            Section {
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
        SettingsView()
    }
}
