//
//  ViewController.swift
//  my-100daysofcode-app
//
//  Created by Marvin Messenzehl on 18.04.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    
    @IBOutlet weak var webProjectsButton: UIButton!
    @IBOutlet weak var appProjectsButton: UIButton!
    @IBOutlet weak var thoughtsButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var githubButton: UIButton!
    
    
    
    // Color properties
    let darkBlueColor = UIColor(red:0.00, green:0.26, blue:0.35, alpha:1.0)
    let mintGreenColor = UIColor(red:0.12, green:0.54, blue:0.44, alpha:1.0)
    let limeGreenColor = UIColor(red:0.75, green:0.86, blue:0.22, alpha:1.0)
    let lemonYellowColor = UIColor(red:1.00, green:0.88, blue:0.10, alpha:1.0)
    let orangeColor = UIColor(red:0.99, green:0.45, blue:0.00, alpha:1.0)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // make buttons round
        webProjectsButton.layer.cornerRadius = 0.5 * webProjectsButton.bounds.size.width
        appProjectsButton.layer.cornerRadius = 0.5 * appProjectsButton.bounds.size.width
        thoughtsButton.layer.cornerRadius = 0.5 * thoughtsButton.bounds.size.width
        
        //round buttons for twitter and github with "padding"
        twitterButton.titleEdgeInsets = UIEdgeInsetsMake(20, 20, 20, 20)
        twitterButton.contentEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        twitterButton.layer.cornerRadius = 0.5 * twitterButton.bounds.size.width
        
        githubButton.titleEdgeInsets = UIEdgeInsetsMake(20, 20, 20, 20)
        githubButton.contentEdgeInsets = UIEdgeInsetsMake(10, 10, 10, 10)
        githubButton.layer.cornerRadius = 0.5 * githubButton.bounds.size.width
        
    }
    
    
    //Actions for WebView
    @IBAction func twitterButtonTapped(_ sender: Any) {
    }
    
    @IBAction func githubButtonTapped(_ sender: Any) {
    }

}

