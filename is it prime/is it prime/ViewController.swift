//
//  ViewController.swift
//  is it prime
//
//  Created by Danny Colangelo on 2/22/17.
//  Copyright © 2017 Danny Colangelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var answerField: UILabel!
    @IBAction func findOutButton(_ sender: Any) {
        if let userEnteredString = numberField.text {
            let userEnteredString = Int(numberField.text!)
            if let number = userEnteredString {
                var isPrime = true
                if number == 1 {
                    isPrime = false
                }
                var i = 1
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    answerField.text = "\(number) is prime!"
                } else {
                    answerField.text = "\(number) is not prime"
                }
            } else {
                answerField.text = "please enter a positive whole number!"
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

