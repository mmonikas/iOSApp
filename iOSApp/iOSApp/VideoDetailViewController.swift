//
//  VideoDetailViewController.swift
//  FoodPin
//
//  Created by stud on 28/01/2019.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit
import AVKit

//https://youtu.be/_WOwOVNEfzYhttps://youtu.be/_WOwOVNEfzY

class VideoDetailViewController: UIViewController {

    @IBOutlet var songImageView: UIImageView!
    @IBOutlet var authorNameLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    
    var videoImageName = "";
    var authorName = "";
    var videoTitle = "";
    var videoPath = "";
    
    //    var details = "";
    
    @IBAction func playVideo(_ sender: Any)
    {
        if let path = Bundle.main.path(forResource: videoPath, ofType: "mp4")
        {
            let video = AVPlayer(url: URL(fileURLWithPath: path))
            let videoPlayer = AVPlayerViewController()
            videoPlayer.player = video
            
            present(videoPlayer, animated: true, completion:
            {
                video.play()
            })
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songImageView.image = UIImage(named: videoImageName)
        authorNameLabel.text = authorName
        titleLabel.text = videoTitle
        // Do any additional setup after loading the view
        
        
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
