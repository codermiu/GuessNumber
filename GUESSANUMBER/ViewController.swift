//
//  ViewController.swift
//  GUESSANUMBER
//
//  Created by Daning Miao on 27/6/18.
//  Copyright © 2018 Daning Miao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var suggestionLabel: UILabel!
  
    // generate a random number between 1~100
    var answer = Int(arc4random_uniform(100)+1)
    
    var gameOver = false
    
    @IBOutlet weak var restart: UILabel!
    @IBOutlet weak var numberInput: UITextField!
    
    @IBAction func submitButton(_ sender: UIButton) {
     let inputNumber = Int(numberInput.text!)
    
        // result rules: practice for "if" statement
        // note: how to restart a game by using  "bool"
        if gameOver == false {
            restart.text = nil
            if inputNumber == nil {
                resultLabel.text = "Please enter a number"}
            else if inputNumber! > answer {
                print("it is wrong,ther correct number is \(answer)")
                resultLabel.text = "it is too big, try again."
            }
            else if inputNumber! < answer{
                resultLabel.text = "it is too small, try again."
                 print("it is wrong,ther correct number is \(answer)")
            }
            else if inputNumber == answer {
                resultLabel.text = "Congrat, it is correct! Restart"
                gameOver = true
            }
            
        }
        else {
             answer = Int(arc4random_uniform(100)+1)
             gameOver = false
             restart.text = "Enter new number to start!"
            }
        }
  
    
    
    
    @IBOutlet weak var resultLabel: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view, typically from a nib.
        
      // push the keyboard up
       numberInput.becomeFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


