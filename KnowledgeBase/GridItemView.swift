//
//  GridItemView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 09.11.2023.
//

import SwiftUI

struct GridItemView: View {
    let size: Double
    let image: Image


    var body: some View {
        ZStack(alignment: .topTrailing) {
            image
                .resizable()
                .scaledToFill()
                .frame(width: size, height: size)
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        GridItemView(size: 50, image: Image(uiImage: UIImage(named: "lorem-ipsum-generator-word-processor")!))
    }
}
