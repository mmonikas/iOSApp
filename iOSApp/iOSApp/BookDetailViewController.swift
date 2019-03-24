//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by stud on 14/01/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    @IBOutlet var bookImageView: UIImageView!
    @IBOutlet var authorNameLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var detailsLabel: UILabel!
    
    var bookImageName = "";
    var authorName = "";
    var bookTitle = "";
    var details = "";


    override func viewDidLoad() {
        super.viewDidLoad()

        bookImageView.image = UIImage(named: bookImageName)
        authorNameLabel.text = authorName
        titleLabel.text = bookTitle
        detailsLabel.text = details
        // Do any additional setup after loading the view.
        navigationItem.largeTitleDisplayMode = .never
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
