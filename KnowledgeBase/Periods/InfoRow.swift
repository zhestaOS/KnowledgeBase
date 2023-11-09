//
//  InfoRow.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct InfoRow: View {
    let post: Post
    
    var body: some View {
        HStack {
            post.image
                .resizable()
                .frame(width: 48, height: 48)
                .cornerRadius(24)
            Text(post.title)
        }
    }
}

struct InfoRow_Previews: PreviewProvider {
    static var previews: some View {
        InfoRow(post: Post(title: "123", description: "lakjsdlkasjd", image: Image("lorem-ipsum-generator-word-processor")))
    }
}
