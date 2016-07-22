//
//  ViewController.swift
//  TVOSFocusEngine
//
//  Created by Mauro Olivo on 21/07/16.
//  Copyright © 2016 Mauro Olivo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sq4: UIButton!


    @IBOutlet weak var appleImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print( sq4.canBecomeFocused() )
        print( appleImage.canBecomeFocused() )
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override weak var preferredFocusedView: UIView? {
        return sq4
    }
}

