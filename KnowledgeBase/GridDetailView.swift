//
//  GridDetailView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 09.11.2023.
//

import SwiftUI

struct GridDetailView: View {
    var image: Image
    
    var body: some View {
        image
    }
}

struct GridDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GridDetailView(image: Image(uiImage: UIImage(named: "lorem-ipsum-generator-word-processor")!))
    }
}
