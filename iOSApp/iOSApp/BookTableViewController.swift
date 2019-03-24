//
//  RestaurantTableViewController.swift
//  FoodPin
//
//  Created by stud on 17/12/2018.
//  Copyright © 2018 AppCoda. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {

    var bookAuthors = ["Jakub Szamalek", "Lee Child", "Bill Clinton, James Patterson", "Remigiusz Mroz",
                       "Remigiusz Mroz", "B.A. Paris", "Katarzyna Puzynska", "Bernard Minier", "Alek Rogozinski"]
    
    var bookImages = ["cokolwiek-wybierzesz", "czas-przeszly", "gdzie-jest-prezydent", "kasacja", "nieodgadniona", "pozwol-mi-wrocic", "rodzanice-lipowo",
                           "siostry", "smierc-w-blasku-fleszy"]

    var bookQuotes = ["Czasem bywa tak, ze najlepsze ksiazki roku pojawiaja sie juz na jego poczatku. Pierwsza czesc trylogii 'Ukryta siec' jednego z najbardziej obiecujacych pisarzy mlodego pokolenia.",
                      "Zazwyczaj przeciwnicy Reachera maja dwie piesci. Tym razem jednak bedzie musial bic sie z przeszloscia. Reacher postanowil podazyc szlakiem zachodzacego slonca i przejechac z Maine do Kalifornii. Ale, jak zwykle, nie ujechal daleko. Przy leznej drodze w Nowej Anglii widzi drogowskaz do miejsca, w ktorym nigdy nie byl: miasteczka, gdzie mieszkal jego ojciec. Czym jest jeden dodatkowy dzien podrozy?",
                      "To siÍ za chwilÍ wydarzy. Najgroüniejszy atak terrorystyczny w historii rozpocznie siÍ za 6Ö 5Ö 4Ö Zniknie wszystko. DostÍp do wody, prπdu, twoich oszczÍdnoúci. Nie zadzwonisz do rodziny. Nie bÍdziesz wiedzia≥, co siÍ dzieje. Nie spodziewa≥eú siÍ, øe to moøe dotyczyÊ takøe ciebie. Ktoú tylko czeka, by zrealizowaÊ swÛj plan. Ma sprzymierzeÒca w Bia≥ym Domu. Wystarczy, øe wpisze has≥o.",
                      "Manipulacje, intrygi i bezwzglÍdny prawniczy úwiatÖ Syn biznesmena zostaje oskarøony o zabicie dwÛch osÛb. Wina wydaje siÍ oczywista, a morderca przez 10 dni nie pozbywa siÍ cia≥ swych ofiar.",
                      "Kontynuacja bestsellerowej Nieodnalezionej! Rok po ucieczce od mÍøa Kasandra Reimann prowadzi spokojne, ustatkowane øycie za granicπ. Jest przekonana, øe uda≥o jej siÍ zostawiÊ wszystko za sobπ ñ takøe konsekwencje tego, co zrobi≥a, by ratowaÊ siebie i dziecko. Do czasu. Pewnego dnia jej syn nie wraca do domu po wizycie u kolegi, a jedyny úlad prowadzi do Opola. Zrozpaczona matka zrobi wszystko, by odnaleüÊ dziecko, nawet jeúli bÍdzie oznacza≥o to ponowne spotkanie z cz≥owiekiem, ktÛrego øycie zniszczy≥a.",
                      "PowieúÊ autorki bestsellerowych thrillerÛw 'Za zamkniÍtymi drzwiami' oraz 'Na skraju za≥amania'. Ona zniknÍ≥a. Fin i Layla, m≥odzi i nieprzytomne w sobie zakochani, wyjeødøajπ na wakacje do Francji. W drodze zatrzymujπ siÍ w nocy na parkingu i kiedy Fin wraca z toalety, jego dziewczyny nigdzie nie ma.",
                      "Zbliøa siÍ krwawy superksiÍøyc. MieszkaÒcy maleÒkich Rodzanic bojπ siÍ, øe ta niezwyk≥a pe≥nia uwolni z dawna uúpionego demona. Tymczasem na zamarzniÍtym, smaganym zimowym wichrem jeziorze znaleziono cia≥o zamordowanej dziewczyny.",
                      "Maj 1993. Zw≥oki dwÛch siÛstr zostajπ znalezione na brzegu Garonny. Dziewczyny, ubrane w pierwszokomunijne sukienki, siedzia≥y naprzeciwko siebie przywiπzane do drzew. M≥ody Martin Servaz bierze udzia≥ w swoim pierwszym úledztwie.",
                      "DwÛjka przyjaciÛ≥, Mariusz i Dominika, prowadzπ agencjÍ zajmujπcπ siÍ organizacjπ imprez. Kiedy otrzymujπ zlecenie przygotowania pokazu mody najpopularniejszych polskich projektantÛw, starajπ siÍ zrobiÊ wszystko, aby sta≥ on siÍ najwaøniejszym wydarzeniem towarzyskim sezonu."]
    
    var bookTitles = ["Cokolwiek wybierzesz - Ukryta siec #1", "Czas przeszly",
                      "Gdzie jest prezydent", "Kasacja", "Nieodgadniona", "Pozwol mi wrocic", "Rodzanice",
                      "Siostry", "Smierc w blasku fleszy"]

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
        return bookAuthors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cellIdentifier = "datacell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BookTableViewCell;
        // Configure the cell...

        cell.titleLabel?.text = bookTitles[indexPath.row]
        cell.thumbnailImageView?.image = UIImage(named: bookImages[indexPath.row])
        cell.authorLabel?.text = bookAuthors[indexPath.row]
        

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
            
            self.bookAuthors.remove(at: indexPath.row)
            self.bookQuotes.remove(at: indexPath.row)
            self.bookTitles.remove(at: indexPath.row)
//            self.restaurantIsVisited.remove(at: indexPath.row)
            self.bookImages.remove(at: indexPath.row)
            
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
            completionHandler(true)
        }
        
        let shareAction = UIContextualAction(style: .normal, title: "Share") {
            (action, sourceView, completionHandler) in
            
            let defaultText = "Just checking in at " + self.bookAuthors[indexPath.row]
            
            let activityController : UIActivityViewController
            
            if let imageToShare = UIImage(named: self.bookImages[indexPath.row]) {
                
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
        
        if segue.identifier == "showBookDetails" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! BookDetailViewController
                destinationController.bookImageName = bookImages[indexPath.row]
                destinationController.bookTitle = bookTitles[indexPath.row]
                destinationController.authorName = bookAuthors[indexPath.row]
                destinationController.details = bookQuotes[indexPath.row]
            }
        }
    }
 

}

