//
//  MyList+CoreDataProperties.swift
//  RemindersApp
//
//  Created by AITUSR on 28/03/24.
//

import Foundation
import CoreData
import UIKit

extension MyList {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyList> {
        return NSFetchRequest<MyList>(entityName: "MyList")
    }
    @NSManaged public var name: String
    @NSManaged public var color: UIColor
}

extension MyList: Identifiable {
    
}

// Mark: generated
extension MyList {
    
}
