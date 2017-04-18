//
//  ViewController.swift
//  my-100daysofcode-app
//
//  Created by Marvin Messenzehl on 18.04.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //test setup
        view.backgroundColor = UIColor.yellow
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 50, height: 50)
        label.text = "Hello"
        self.view.addSubview(label)
    }

    

}

