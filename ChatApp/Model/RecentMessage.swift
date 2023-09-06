//
//  RecentMessage.swift
//  ChatApp
//
//  Created by frizhub on 03/09/2023.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift

struct RecentMessage: Codable, Identifiable {
    @DocumentID var id: String?
    let text, toId, fromId, email, profileImageUrl: String
    let timeStamp: Date
    
    var username: String {
        email.components(separatedBy: "@").first ?? email
    }
    
    var timeago: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .abbreviated
        return formatter.localizedString(for: timeStamp, relativeTo: Date())
    }
}
