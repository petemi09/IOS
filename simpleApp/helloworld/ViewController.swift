//
//  ViewController.swift
//  helloworld
//
//  Created by Mitchell Petellin on 12/6/18.
//  Copyright © 2018 Mitchell Petellin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
//    this is what I have put in the code
    @IBOutlet weak var bg: UIImageView!
    
    @IBOutlet weak var display: UIImageView!
    
    @IBOutlet weak var welcomeBTN: UIButton!
    
    @IBOutlet weak var hideIt: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideIt.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //inserted action
    @IBAction func hideBG(_ sender: Any) {
        bg.isHidden = true
        display.isHidden = true
        welcomeBTN.isHidden = false
        hideIt.isHidden = true
    }

    @IBAction func welcomePressed(_ sender: Any) {
        bg.isHidden = false
        display.isHidden = false
        welcomeBTN.isHidden = true
        hideIt.isHidden = false
        
    }
    
    }

