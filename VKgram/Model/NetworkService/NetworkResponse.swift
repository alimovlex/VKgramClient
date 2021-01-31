//
//  NetworkResponse.swift
//  VKgram
//
//  Created by Andrey on 20/10/2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import Foundation

//  // MARK: - Welcome
//  struct UserWelcome: Codable {
//      let response: UserResponse
//  }
//
//  // MARK: - Response
//  struct UserResponse: Codable {
//      let count: Int
//      let items: [User]
//  }
//
//  // MARK: - Item
//  struct User: Codable {
//      let id: Int
//      let firstName, lastName: String
//      let photo_200: String
//      let trackCode: String
//
//      enum CodingKeys: String, CodingKey {
//          case id
//          case firstName = "first_name"
//          case lastName = "last_name"
//          case photo_200 = "photo_200"
//          case trackCode = "track_code"
//      }
//  }

//struct PhotoWelcome: Codable {
//    let response: PhotoResponse
//}

// MARK: - Response
struct PhotoResponse: Codable {
    let count: Int
    let items: [Photo]
}

// MARK: - Item
struct Photo: Codable, PhotoInterface {
    let albumID, date, id, ownerID: Int
    let height: Int
    let photo130: String
    let photo604: String
    let photo807: String
    let postID: Int?
    let text: String
    let width: Int
    let likes: Count
    let reposts: Count
    
    var largePhoto: String { return photo807 }
    var mediumPhoto: String { return photo604 }
    var smallPhoto: String { return photo130 }
    var repostsCount: String { return String(describing: reposts.count) }
    var likesCount: String { return String(describing: likes.count) }

    enum CodingKeys: String, CodingKey {
        case albumID = "album_id"
        case date, id
        case ownerID = "owner_id"
        case height
        case photo130 = "photo_130"
        case photo604 = "photo_604"
        case photo807 = "photo_807"
        case postID = "post_id"
        case text, width, likes, reposts
    }
}

// MARK: - Comments
struct Count: Codable {
    let count: Int
}


 
