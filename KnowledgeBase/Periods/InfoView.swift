//
//  InfoView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct InfoView: View {
    let posts = ContentGenerator.model()
    var titleOn: Bool
    
    var body: some View {
        NavigationStack {
            if titleOn {
                Section {
                    Text("Periods")
                }
            }
            Section {
                List(posts, id: \.title) { post in
                    NavigationLink {
                        InfoDetails(post: post)
                    } label: {
                        InfoRow(post: post)
                    }
                }
            }
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(titleOn: true)
    }
}
