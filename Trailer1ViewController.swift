//
//  Trailer1ViewController.swift
//  MyFilesSwift9
//
//  Created by Charles Konkol on 2015-11-02.
//  Copyright © 2015 Rock Valley College. All rights reserved.
//
import UIKit
import AVKit
import AVFoundation

import UIKit

class Trailer1ViewController: UIViewController {
    
    var trailer:String!
    
    
    @IBAction func trailer1(sender: AnyObject) {
    trailer = "1"
    GoToPlayer()
    }
    
    @IBAction func trailer2(sender: AnyObject) {
    trailer = "2"
    GoToPlayer()
    }
    
    @IBAction func trailer3(sender: AnyObject) {
    trailer = "3"
    GoToPlayer()
    }
    
    
    override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    func GoToPlayer()
{
    var movie:String!
    if (trailer == "1")
{
    movie = "trailer1"
    }
    if (trailer == "2")
{
    movie = "trailer2"
    }
    if (trailer == "3")
{
    movie = "trailer3"
    }
    
    let termsPath:String? = NSBundle.mainBundle().pathForResource(movie, ofType: "mp4")!
    
    let url = NSURL(fileURLWithPath: termsPath!)
    let player = AVPlayer(URL: url)
    let playerController = AVPlayerViewController()
    
    playerController.player = player
    self.addChildViewController(playerController)
    self.view.addSubview(playerController.view)
   // playerController.view.frame = self.view.frame
    playerController.didMoveToParentViewController(self)
    
    player.play()
    
    
    }
    
    
    
}
