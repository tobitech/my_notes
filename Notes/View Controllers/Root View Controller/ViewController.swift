//
//  ViewController.swift
//  Notes
//
//  Created by Bart Jacobs on 23/11/2017.
//  Copyright © 2017 Cocoacasts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let coreDataManager = CoreDataManager(modelName: "Notes")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(coreDataManager.managedObjectContext)
        
    }


}

