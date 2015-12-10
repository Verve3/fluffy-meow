//
//  MoreViewController.swift
//  Beto
//
//  Created by Varun D Patel on 12/9/15.
//  Copyright © 2015 Varun D Patel. All rights reserved.
//

import UIKit
import Eureka

class MoreViewController: FormViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeForm()
    }
    
    private func initializeForm() {
        form  +++= Section("User And Events Info")
            <<< ButtonRow("My Profile") { row in
                row.title = row.tag
                row.presentationMode = .SegueName(segueName: "MyProfileSegue", completionCallback:{  vc in vc.dismissViewControllerAnimated(true, completion: nil) })
            }
            
            <<< ButtonRow("Add an, Event") {
                $0.title = $0.tag
                $0.presentationMode = .SegueName(segueName: "AddEventSegue", completionCallback: nil)
            }
            
            <<< ButtonRow("Add an Event") {
                $0.title = $0.tag
                $0.presentationMode = .SegueName(segueName: "AddEventSegue", completionCallback: nil)
        }
        
        form +++= Section("Properties")
            <<< SegmentedRow<Int>(){
                $0.title = "Events Distance (Miles)"
                $0.options = [10, 25, 50]
                $0.value = 25
        }
        form +++= Section("User Options")
            <<< ButtonRow("Log Out Of Account") { (row: ButtonRow) in
                row.title = row.tag
                logOut()
        }
        
        // Space so footer does not cover up Logout button
        form +++= Section()
        form +++= Section()
        
    }
    
    private func logOut(){
        
    }
    
    func cancelTapped(barButtonItem: UIBarButtonItem) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func saveTapped(sender: UIBarButtonItem){
        
        
    }
    
    /*
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        super.viewDidLoad()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("ImageAndLabelTableViewCell") as! ImageAndLabelTableViewCell
            cell.actionLabel.text = "My Profile"
            cell.actionImage.image = UIImage(named: "")
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("ImageAndLabelTableViewCell") as! ImageAndLabelTableViewCell
            cell.actionLabel.text = ""
            return cell
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier! {
        case "AddEvent":
            let addEvents = segue.destinationViewController as! NativeEventNavigationController
            addEvents.completionCallback = {  vc in vc.dismissViewControllerAnimated(true, completion: nil) })
            presentViewController(addEvents, animated: true, completion: nil)
            break
        default:
            assert(false, "Unhandled Segue")
        }
    }
    */
}

