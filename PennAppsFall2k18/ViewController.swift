//
//  ViewController.swift
//  PennAppsFall2k18
//
//  Created by Matt Tuazon on 9/7/18.
//  Copyright © 2018 Matt Tuazon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var choresTableView: UITableView!
    var choreList = ["Do Laundry", "Take out trash", "Wash Sal", "Make sure bathroom clean"]
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

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choreList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ChoreCell"){
            
            cell.textLabel?.text = userList[indexPath.row] + ": " + choreList[indexPath.row]
            
            
            return cell
        }
        return UITableViewCell()
        }
    }
    
    


