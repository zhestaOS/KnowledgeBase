//
//  InfoDetails.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct InfoDetails: View {
    var post: Post
    
    var body: some View {
        ScrollView (.vertical, showsIndicators: true) {
            VStack (alignment: .leading) {
                HStack  {
                    post.image
                        .resizable()
                        .frame(width: 66, height: 66)
                    Text(post.title)
                }.frame(alignment: .leading)
                Text(post.description)
                Spacer()
            }.padding(.all)
        }.navigationBarTitle("", displayMode: .inline)
        
        
    }
}

struct InfoDetails_Previews: PreviewProvider {
    static var previews: some View {
        let post1 = Post(
            title: "REMIXING A CLASSIC",
            description: "So how did the classical Latin become so incoherent? According to McClintock, a 15th century typesetter likely scrambled part of Cicero's De Finibus in order to provide placeholder text to mockup various fonts for a type specimen book. /nIt's difficult to find examples of lorem ipsum in use before Letraset made it popular as a dummy text in the 1960s, although McClintock says he remembers coming across the lorem ipsum passage in a book of old metal type samples. So far he hasn't relocated where he once saw the passage, but the popularity of Cicero in the 15th century supports the theory that the filler text has been used for centuries.",
            image: Image("lorem-ipsum-15th-century-typesetter"))
        
        InfoDetails(post: post1)
    }
}
