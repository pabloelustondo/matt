//
//  ConcernsTableViewController.swift
//  Matt
//
//  Created by Pablo Elustondo on 2016-10-07.
//  Copyright © 2016 Pablo Elustondo. All rights reserved.
//

import UIKit

class ConcernsTableViewController: UITableViewController {
    
    // MARK: Properties
    
    var concerns = [Concern]()
    
    func loadSampleConcerns() {
        let photo1 = UIImage(named: "A1-Mind")!
        let concern1 = Concern(name: "A1-Mind", photo: photo1, status: 4)!
        
        let photo2 = UIImage(named: "A2-Body")!
        let concern2 = Concern(name: "A2-Body", photo: photo2, status: 5)!
        
        let photo3 = UIImage(named: "A3-Family")!
        let concern3 = Concern(name: "A3-Family", photo: photo3, status: 3)!
        
        concerns += [concern1, concern2, concern3]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadSampleConcerns()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return concerns.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        /*
         "Object allocation has a performance cost, especially if the allocation has to happen repeatedly over a short period—say, 
         when the user scrolls a table view. If you reuse cells instead of allocating new ones, you greatly enhance table-view performance."
         Source: iOS Reference Library
        */
        
        let cellIdentifier = "ConcernTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ConcernTableViewCell
        
        let concern = concerns[indexPath.row]
        
        cell.ConcernName.text = concern.name
        cell.ConcernImage.image = concern.photo
        cell.ConcernStatus.concernPoints = concern.status

        // Configure the cell...

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
