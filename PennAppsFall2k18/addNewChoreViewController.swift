//
//  addNewChoreViewController.swift
//  PennAppsFall2k18
//
//  Created by Matt Tuazon on 9/8/18.
//  Copyright © 2018 Matt Tuazon. All rights reserved.
//

import Foundation
import UIKit

class addNewChoreViewController: UIViewController {
  
    @IBOutlet weak var detailsOfChore: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsOfChore.text = "Enter details of the chore..."
        detailsOfChore.textColor = UIColor.lightGray
        detailsOfChore.returnKeyType = .done

    }
}

extension addNewChoreViewController: UITableViewDelegate {
    
    
    
    
}
