//
//  ThoughtsViewController.swift
//  my-100daysofcode-app
//
//  Created by Marvin Messenzehl on 28.04.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import UIKit

class ThoughtsViewController: UIViewController {

    @IBOutlet weak var roundTextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        roundTextButton.layer.cornerRadius = 0.5 * roundTextButton.bounds.size.width
        roundTextButton.clipsToBounds = true

    }


}
