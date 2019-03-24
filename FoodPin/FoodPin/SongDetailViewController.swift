//
//  SongDetailViewController.swift
//  FoodPin
//
//  Created by stud on 21/01/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit
import AVFoundation

class SongDetailViewController: UIViewController {

    @IBOutlet var songImageView: UIImageView!
    @IBOutlet var authorNameLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!

    var songImageName = "";
    var authorName = "";
    var songTitle = "";
    var songPath = "";
    
    var player: AVAudioPlayer = AVAudioPlayer()
//    var details = "";
    
    @IBAction func play(_ sender: Any)
    {
        player.play()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songImageView.image = UIImage(named: songImageName)
        authorNameLabel.text = authorName
        titleLabel.text = songTitle
        // Do any additional setup after loading the view.
        
        do
        {
            let audioPath = Bundle.main.path(forResource: songPath, ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch
        {
            
        }
        
        
        
        
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
