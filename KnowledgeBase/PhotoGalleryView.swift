//
//  HelloView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI
import AVFoundation

struct PhotoGalleryView: View {
    var body: some View {
        NavigationStack {
            GridView()
        }
    }
}

struct HelloView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoGalleryView()
    }
}
