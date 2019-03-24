//
//  SongTableViewController.swift
//  FoodPin
//
//  Created by stud on 21/01/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class SongTableViewController: UITableViewController {

    var songAuthors = ["Chris Issak", "Kings of Leon", "Kortez", "The XX", "Two Door Cinema", "U2"]
    
    var songImages = ["wicked_game", "sex_on_fire", "kortez", "intro", "are_we _ready", "with_or_without_you"]
    
    var songTitles = ["Wicked game", "Sex on fire", "Z imbirem", "Intro", "Are we ready?", "With or without you"]
    
    var songPaths = ["wicked-game", "sex-on-fire", "z-imbirem", "intro", "are-we-ready", "with-or-without-you"]
    
    //    var restaurantIsVisited = Array(repeating: false, count: 21)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.cellLayoutMarginsFollowReadableWidth = true
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return songAuthors.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! SongTableViewCell
        
        cell.titleLabel.text = songTitles[indexPath.row]
        cell.thumbnailImageView.image = UIImage(named: songImages[indexPath.row])
        cell.authorLabel.text = songAuthors[indexPath.row]
        
        return cell
    }
    
    //    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //
    //        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
    //
    //        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
    //
    //        let callActionHandler = { (action: UIAlertAction!) -> Void in
    //            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
    //            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    //            self.present(alertMessage, animated: true, completion: nil)
    //        }
    //
    //        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
    //
    //        let checkInAction = UIAlertAction(title: "Check in", style: .default, handler: {
    //            (action: UIAlertAction!) -> Void in
    //
    //            let cell = tableView.cellForRow(at: indexPath)
    //            cell?.accessoryType = .checkmark
    //            self.restaurantIsVisited[indexPath.row] = true
    //
    //        })
    //
    //        optionMenu.addAction(checkInAction)
    //        optionMenu.addAction(callAction)
    //
    //        optionMenu.addAction(cancelAction)
    //        present(optionMenu, animated: true, completion: nil)
    //
    //        if let popoverController = optionMenu.popoverPresentationController {
    //            if let cell = tableView.cellForRow(at: indexPath) {
    //                popoverController.sourceView = cell
    //                popoverController.sourceRect = cell.bounds
    //            }
    //        }
    //        tableView.deselectRow(at: indexPath, animated: false)
    //    }
    //
    
    //    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    //    {
    //        if editingStyle == .delete {
    //            // Delete the row from the data source
    //            restaurantNames.remove(at: indexPath.row)
    //            restaurantLocations.remove(at: indexPath.row)
    //            restaurantTypes.remove(at: indexPath.row)
    //            restaurantIsVisited.remove(at: indexPath.row)
    //            restaurantImages.remove(at: indexPath.row)
    //
    //            //tableView.reloadData()
    //
    //            tableView.deleteRows(at: [indexPath], with: .fade)
    //
    //            print("Total item: \(restaurantNames.count)")
    //            for name in restaurantNames {
    //                print(name)
    //            }
    //        }
    //    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") {
            (action, sourceView, completionHandler) in
            
            self.songAuthors.remove(at: indexPath.row)
        
            self.songTitles.remove(at: indexPath.row)
            //            self.restaurantIsVisited.remove(at: indexPath.row)
            self.songImages.remove(at: indexPath.row)
            
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
            completionHandler(true)
        }
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") {
            (action, sourceView, completionHandler) in
            
            let defaultText = "Just checking in at " + self.songAuthors[indexPath.row]
            
            let activityController : UIActivityViewController
            
            if let imageToShare = UIImage(named: self.songImages[indexPath.row]) {
                
                activityController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
            }   else {
                activityController = UIActivityViewController(activityItems: [defaultText], applicationActivities: nil)
            }
            
            if let popoverController = activityController.popoverPresentationController {
                if let cell = tableView.cellForRow(at: indexPath) {
                    popoverController.sourceView = cell
                    popoverController.sourceRect = cell.bounds
                }
            }
            
            self.present(activityController, animated: true, completion: nil)
            completionHandler(true)
        }
        
        deleteAction.backgroundColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        shareAction .backgroundColor = UIColor(red: 254.0/255.0, green: 149.0/255.0, blue: 38.0/255.0, alpha: 1.0)
        
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
        
        return swipeConfiguration
        
    }
    
    
    
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showSongDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! SongDetailViewController
                destinationController.songImageName = songImages[indexPath.row]
                destinationController.songTitle = songTitles[indexPath.row]
                destinationController.authorName = songAuthors[indexPath.row]
                destinationController.songPath = songPaths[indexPath.row]
        
            }
        }
    }
    
    
}


