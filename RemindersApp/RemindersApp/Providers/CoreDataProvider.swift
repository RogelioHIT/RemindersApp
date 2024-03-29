//
//  CoreDataProvider.swift
//  RemindersApp
//
//  Created by AITUSR on 28/03/24.
//

import Foundation
import CoreData

class CoreDataProvider {
    
    static let shared = CoreDataProvider()
    let persistentContainer: NSPersistentContainer
    
    private init() {
        persistentContainer = NSPersistentContainer(name: "RemindersModel")
        persistentContainer.loadPersistentStores { desc, error in
            if let error {
                fatalError("Error init reminders model \(error)")
            }
            
            
        }
    }
    
    
}
