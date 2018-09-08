//
//  usersViewController.swift
//  PennAppsFall2k18
//
//  Created by Matt Tuazon on 9/8/18.
//  Copyright © 2018 Matt Tuazon. All rights reserved.
//

import Foundation
import UIKit

class usersViewController: UIViewController {
    
    @IBOutlet weak var usersTableView: UITableView!
    
    var usersList = ["Sal","Matt","Sean","Mickey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usersTableView.delegate = self
        usersTableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

extension usersViewController: UITableViewDelegate, UITableViewDataSource { //extension for user view
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell"){
            
            cell.textLabel?.text = usersList[indexPath.row] + ": "
            cell.detailTextLabel?.text = usersList[indexPath.row]
            
            return cell
        }
        
        
        
        
        return UITableViewCell()
    }
    
    
    
}

