//
//  ChatMessage.swift
//  ChatApp
//
//  Created by frizhub on 02/09/2023.
//

import Foundation
import FirebaseFirestoreSwift

struct ChatMessage: Codable, Identifiable {
    @DocumentID var id: String?
    let fromId, toId, text: String
    let timeStamp: Date
}
