//
//  ViewController.swift
//  isPrime
//
//  Created by Sameer Sharma on 2023-09-19.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var inputNumber: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    var isPrime = true
    
    @IBAction func primeCheck(_ sender: Any) {
   
        if let number = inputNumber.text {
            let number_int = Int(number)!
            var current = 2
            
            while current < number_int {
                if number_int%current == 0 {
                    isPrime = false
                    break
                }
                current += 1
            }
            
        }
        if isPrime {
            resultLabel.text = "\(inputNumber.text!) is a Prime number"
        } else {
            resultLabel.text = "\(inputNumber.text!) is a NOT a Prime number"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

