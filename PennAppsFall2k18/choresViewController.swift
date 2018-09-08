//
//  ViewController.swift
//  PennAppsFall2k18
//
//  Created by Matt Tuazon on 9/7/18.
//  Copyright © 2018 Matt Tuazon. All rights reserved.
//

import UIKit

class choresViewController: UIViewController {

    @IBOutlet weak var choresTableView: UITableView!
    
    
    var choreList = ["Do Laundry", "Take out trash", "Wash Sal", "Make sure bathroom clean and make sure and make sure this is long task"]
    var userList = ["Sal", "Matt", "Sean", "Mickey"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        choresTableView.delegate = self
        choresTableView.dataSource = self
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension choresViewController: UITableViewDelegate, UITableViewDataSource { //extension for chore view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choreList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ChoreCell"){
            
            cell.textLabel?.text = choreList[indexPath.row] + ": "
            cell.detailTextLabel?.text = userList[indexPath.row]
            
            return cell
        }
        
        

        
        return UITableViewCell()
        }
    }





