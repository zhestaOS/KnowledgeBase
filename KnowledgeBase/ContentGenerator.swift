//
//  ContentGenerator.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

class ContentGenerator {
    static func model() -> [Post] {
        let post1 = Post(
            title: "Remixing a classic",
            description: "So how did the classical Latin become so incoherent? According to McClintock, a 15th century typesetter likely scrambled part of Cicero's De Finibus in order to provide placeholder text to mockup various fonts for a type specimen book. \n\nIt's difficult to find examples of lorem ipsum in use before Letraset made it popular as a dummy text in the 1960s, although McClintock says he remembers coming across the lorem ipsum passage in a book of old metal type samples. So far he hasn't relocated where he once saw the passage, but the popularity of Cicero in the 15th century supports the theory that the filler text has been used for centuries.",
            image: Image("lorem-ipsum-15th-century-typesetter"))
        
        let post2 = Post(
            title: "Interpretting nonsene",
            description: "Don't bother typing lorem ipsum into Google translate. If you already tried, you may have gotten anything from NATO to China, depending on how you capitalized the letters. The bizarre translation was fodder for conspiracy theories, but Google has since updated its lorem ipsum translation to, boringly enough, lorem ipsum. \n\nOne brave soul did take a stab at translating the almost-not-quite-Latin. According to The Guardian, Jaspreet Singh Boparai undertook the challenge with the goal of making the text precisely as incoherent in English as it is in Latin - and to make it incoherent in the same way. As a result, the Greek 'eu' in Latin became the French 'bien' [...] and the '-ing' ending in 'lorem ipsum' seemed best rendered by an '-iendum' in English.",
            image: Image("lorem-ipsum-generator-letraset-transfer-sheet"))
        
        let post3 = Post(
            title: "Digital ipsum",
            description: "The decade that brought us Star Trek and Doctor Who also resurrected Cicero—or at least what used to be Cicero—in an attempt to make the days before computerized design a little less painstaking. \n\nThe French lettering company Letraset manufactured a set of dry-transfer sheets which included the lorem ipsum filler text in a variety of fonts, sizes, and layouts. These sheets of lettering could be rubbed on anywhere and were quickly adopted by graphic artists, printers, architects, and advertisers for their professional look and ease of use.",
            image: Image("lorem-ipsum-generator-word-processor")
        )
        
        return [post1, post2, post3]
    }
}
