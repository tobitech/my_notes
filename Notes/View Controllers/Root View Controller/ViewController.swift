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
        
        let note = Note(context: coreDataManager.managedObjectContext)
        
        note.title = "My Second Note"
        note.createdAt = Date()
        note.updatedAt = Date()
        
        print(note.title ?? "No Title")
        
        do {
            try coreDataManager.managedObjectContext.save()
        } catch {
            print("Unable to Save Managed Object Context")
            print("\(error), \(error.localizedDescription)")
        }
        
    }


}

