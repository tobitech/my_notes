//
//  ViewController.swift
//  Notes
//
//  Created by Bart Jacobs on 23/11/2017.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    // MARK: - Properties
    
    private let coreDataManager = CoreDataManager(modelName: "Notes")

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let entityDescription = NSEntityDescription.entity(forEntityName: "Note", in: coreDataManager.managedObjectContext) {
            
            print(entityDescription.name ?? "No Name")
            print(entityDescription.properties)
            
            let note = NSManagedObject(entity: entityDescription, insertInto: coreDataManager.managedObjectContext)
            
            note.setValue("My First Note", forKey: "title")
            note.setValue(Date(), forKey: "createdAt")
            note.setValue(Date(), forKey: "updatedAt")
            
            print(note)
            
            do {
                try coreDataManager.managedObjectContext.save()
            } catch {
                print("Unable to Save Managed Object Context")
                print("\(error), \(error.localizedDescription)")
            }
            
        }
        
    }


}

