//
//  Video+CoreDataProperties.swift
//  Truthub
//
//  Created by Haeven Kelley on 8/31/24.
//
//

import Foundation
import CoreData


extension Video {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Video> {
        return NSFetchRequest<Video>(entityName: "Video")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var title: String?
    @NSManaged public var author: String?
    @NSManaged public var video_description: String?
    @NSManaged public var thumbnail_url: String?
    @NSManaged public var video_url: String?
    @NSManaged public var likes: Int16
    @NSManaged public var dislikes: Int16

}

extension Video : Identifiable {

}
