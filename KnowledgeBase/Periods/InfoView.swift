//
//  InfoView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct InfoView: View {
    let posts = ContentGenerator.model()
    
    var body: some View {
        NavigationStack {
            List(posts, id: \.title) { post in
                NavigationLink {
                    InfoDetails(post: post)
                } label: {
                    InfoRow(post: post)
                }
            }
            .navigationBarTitle("Periods", displayMode: .inline)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
