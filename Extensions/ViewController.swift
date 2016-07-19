//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //        Create a String object with the value as your full name called fullName
        
        let fullName = "John Hussain"
        
        //        Create an Int object with the value 8675309 called phoneNumber
        
        let phoneNumber = 8675309
        
        //        Print the value of the extension computed properties on fullName and phoneNumber
        //        Call all of your String and Int functions on your name and print them to the console
        
        print(fullName.whisper())
        print(fullName.shout())
        print(fullName.pigLatin())
        print(fullName.points)
        
        print(phoneNumber.half())
        print(phoneNumber.squared)
        print(phoneNumber.isDivisibleBy(2))
        print(phoneNumber.halved)
        
        print(fullName.unicornLevel)
        
        
        unicornLevelLabel.text = fullName.unicornLevel
    }
}
    



