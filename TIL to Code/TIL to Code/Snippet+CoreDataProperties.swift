//
//  Snippet+CoreDataProperties.swift
//  TIL to Code
//
//  Created by CHRISTOPHER ALBANESE on 10/4/18.
//  Copyright © 2018 Project Codex. All rights reserved.
//
//

import Foundation
import CoreData


extension Snippet {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Snippet> {
        return NSFetchRequest<Snippet>(entityName: "Snippet")
    }

    @NSManaged public var title: String?
    @NSManaged public var desc: String?
    @NSManaged public var code: String?
    @NSManaged public var date: NSDate?

}
