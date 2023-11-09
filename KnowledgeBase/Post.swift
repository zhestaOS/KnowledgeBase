//
//  Post.swift
//  KnowledgeBase
//
//  Created by Евгения Шевякова on 08.11.2023.
//

import SwiftUI

struct Post: Identifiable {
    var id = UUID().uuidString
    
    let title: String
    let description: String
    let image: Image
}
