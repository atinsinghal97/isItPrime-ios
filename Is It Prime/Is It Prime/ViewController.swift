//
//  ViewController.swift
//  Is It Prime
//
//  Created by Atin Singhal on 02/11/16.
//  Copyright © 2016 Atin Singhal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberTextField: UITextField!
    @IBOutlet var numberOutput: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        
        if let userEnteredString = numberTextField.text {
            
            let userEnteredInteger = Int(numberTextField.text!)
            if let number = userEnteredInteger  {
                
                var isPrime = true
                var i = 2
                
                if number == 1  {
                    isPrime = false
                }
                
                while i<number  {
                    if number % i == 0 {
                        //not-prime
                        isPrime = false
                    }   else    {
                        //prime
                    }
                    
                    i += 1
                }
                
                if isPrime == true  {
                    numberOutput.text = "\(number) is prime!"
                }   else {
                    numberOutput.text = "\(number) is not prime"
                }
                
            }   else {
                numberOutput.text = "Please enter a positive whole number"
            }
            
        }
        
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

