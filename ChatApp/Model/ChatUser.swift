//
//  ChatUser.swift
//  ChatApp
//
//  Created by frizhub on 31/08/2023.
//

import Foundation
import FirebaseFirestoreSwift

struct ChatUser: Codable, Identifiable {
    
    @DocumentID var id: String?
    
    let uid, email, profileImageUrl : String
    
    init(data: [String: Any]) {
        self.uid = data["uid"] as? String ?? ""
        self.email = data["email"] as? String ?? ""
        self.profileImageUrl = data["profileImageUrl"] as? String ?? ""
    }
}
