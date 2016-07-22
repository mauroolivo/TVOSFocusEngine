//
//  SimpleTableViewController.swift
//  TVOSFocusEngine
//
//  Created by Mauro Olivo on 22/07/16.
//  Copyright © 2016 Mauro Olivo. All rights reserved.
//

import UIKit

class SimpleTableViewController: UIViewController {

    
    let data = ["Apple", "Banana", "Blackberry", "Coconut", "Grapefruit", "Lemon", "Lime", "Mango", "Melon", "Orange", "Peach", "Pear", "Strawberry", "Tamarind"]
    
    @IBOutlet weak var simpleTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}




// MARK: - UITableViewDataSource
extension SimpleTableViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("simple") as! SimpleTableViewCell
        
        cell.cellLablel?.text = data[indexPath.row]
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return data.count
    }
    
}

// MARK: - UITableViewDelegate
extension SimpleTableViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {

        print(data[indexPath.row])
    }
    
    func tableView(tableView: UITableView, canFocusRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        
        if indexPath.row == 3 { return false }
        
        return true
    }
    
}
