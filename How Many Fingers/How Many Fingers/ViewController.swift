//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Nanthakumar R on 13/10/15.
//  Copyright (c) 2015 sourcebits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fingersNumber: UITextField!

    @IBOutlet var resultsForFingerGuessing: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculateAge(sender: AnyObject) {
        var randomNumber = arc4random_uniform(10)
        if fingersNumber.text.toInt() == Int(randomNumber) {
            
        resultsForFingerGuessing.text = "Yes, you have guessed the fingers correctly as \(fingersNumber.text.toInt())"
            
            
            
        } else {
            resultsForFingerGuessing.text = "Sorry, the correct fingures are \(Int(randomNumber)) not \(fingersNumber.text.toInt()!)"
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

