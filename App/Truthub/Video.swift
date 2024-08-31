//
//  Video.swift
//  Trutube
//
//  Created by Haeven Kelley on 8/31/24.
//

import SwiftData

// Define a struct for Video data
struct Video: Model {
    @Attribute(.unique) var id: UUID = UUID() // Unique identifier for each video
    var title: String
    var author: String
    var description: String
    var thumbnailURL: URL
    var videoURL: URL
    var likes: Int
    var dislikes: Int
    
    init(title: String, author: String, description: String, thumbnailURL: URL, videoURL: URL, likes: Int = 0, dislikes: Int = 0) {
        self.title = title
        self.author = author
        self.description = description
        self.thumbnailURL = thumbnailURL
        self.videoURL = videoURL
        self.likes = likes
        self.dislikes = dislikes
    }
}
