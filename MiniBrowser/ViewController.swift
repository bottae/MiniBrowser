//
//  ViewController.swift
//  MiniBrowser
//
//  Created by JAE HA LEE on 2016. 4. 7..
//  Copyright © 2016년 JAE HA LEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIWebViewDelegate {

    @IBOutlet var bookMarkSegmentedControl: UISegmentedControl!
    
    @IBOutlet var urlTextField: UITextField!
    
    @IBOutlet var mainWebView: UIWebView!
    
    @IBOutlet var spinningActivityIndicatorView: UIActivityIndicatorView!
    
    
    @IBAction func bookMarkAction(sender: AnyObject) {
        
        let bookMarkUrl = bookMarkSegmentedControl.titleForSegmentAtIndex(bookMarkSegmentedControl.selectedSegmentIndex)
        
        let urlString = "http://www.\(bookMarkUrl!).com"
        
        mainWebView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        spinningActivityIndicatorView.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        spinningActivityIndicatorView.stopAnimating()
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var urlString = "\(urlTextField.text!)"
        if !urlString.hasPrefix("http://") {
            urlString = "http://\(urlTextField.text!)"
        }
        mainWebView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let urlString = "http://www.facebook.com"
        mainWebView.loadRequest(NSURLRequest(URL: NSURL(string: urlString)!))
        urlTextField.text = urlString
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

