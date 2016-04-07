//
//  ViewController.swift
//  MiniBrowser
//
//  Created by JAE HA LEE on 2016. 4. 7..
//  Copyright © 2016년 JAE HA LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bookMarkSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var urlTextField: UITextField!

    @IBOutlet weak var mainWebView: UIWebView!
    
    
    @IBAction func bookMarkAction(sender: AnyObject) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

