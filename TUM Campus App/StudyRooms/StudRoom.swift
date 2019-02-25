//
//  StudRoom.swift
//  TUM Campus App
//
//  Created by Tim Gymnich on 2/24/19.
//  Copyright © 2019 TUM. All rights reserved.
//

import CoreData

@objc final class StudyRoom: NSManagedObject, Entity {
    
    enum CodingKeys: String, CodingKey {
        case no
    }
    
    required convenience init(from decoder: Decoder) throws {
        guard let context = decoder.userInfo[.context] as? NSManagedObjectContext else { fatalError() }
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.init(entity: StudyRoom.entity(), insertInto: context)
    }
}
