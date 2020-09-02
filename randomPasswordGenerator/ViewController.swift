//
//  ViewController.swift
//  randomPasswordGenerator
//
//  Created by George Higbie on 8/31/20.
//  Copyright © 2020 trainingtrack.io. All rights reserved.
//

import UIKit

class ViewController: UIViewController {



    @IBOutlet weak var passwordRevealed: UILabel!
    
    
    let letters = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "!", "@", "#", "$", "%", "^", "&", "*", "(", ")"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func generatePassword(_ sender: Any) {

        let limit: Int = letters.count-1;
        let passWordSize: Int = 14;
        var newPassword: String = "";
        
        var i: Int = 1;
        while i < passWordSize{
            print(i)
            newPassword += letters[Int.random(in: 0...limit)]
            i+=1;
            print(newPassword);
        }
        
        self.passwordRevealed.text = newPassword;
        
        
        
    }
    
}

