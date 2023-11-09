//
//  GridView.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 09.11.2023.
//

import SwiftUI

struct GridView: View {
    var posts = ContentGenerator.model()
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: 3)
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(posts) { post in
                        GeometryReader { geo in
                            NavigationLink(destination: GridDetailView(image: post.image)) {
                                GridItemView(size: geo.size.width, image: post.image)
                            }
                        }
                        .cornerRadius(8.0)
                        .aspectRatio(1, contentMode: .fit)
                   }
                }
                .padding()
            }
        }
        .navigationBarTitle("Images from posts")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
