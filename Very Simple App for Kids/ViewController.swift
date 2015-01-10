//
//  ViewController.swift
//  Very Simple App for Kids
//
//  Created by Quintin Smith on 11/27/14.
//  Copyright (c) 2014 Quintin Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNumber1: UILabel!
    @IBOutlet weak var lblNumber2: UILabel!
    @IBOutlet weak var lblAnswer: UILabel!
    
    @IBOutlet weak var lblTotalCorrect: UILabel!
    @IBOutlet weak var lblCorrectIncorrect: UILabel!
    
    @IBOutlet weak var btnButton1: UIButton!
    @IBOutlet weak var btnButton2: UIButton!
    @IBOutlet weak var btnButton3: UIButton!
    
    var numberFirst = 0
    var numberSecond = 0
    var answer = 0
    
    var answerCalculate1 = 0
    var answerCalculate2 = 0
    var answerCalculate3 = 0
    
    var totalCorrect = 0
    var buttonAnswer = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGameLogic()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func btnButton1ACTION(sender: UIButton) {
        if answerCalculate1 == answer {
            totalCorrect = totalCorrect + 1
            lblAnswer.text = String(answer)
            lblCorrectIncorrect.text = "Correct :)"
            lblTotalCorrect.text = "Total Answers Correct: \(totalCorrect)"
            
            btnButton1.setTitle("", forState: UIControlState.Normal)
            btnButton2.setTitle("", forState: UIControlState.Normal)
            btnButton3.setTitle("", forState: UIControlState.Normal)
        } else {
            lblCorrectIncorrect.text = "Please Try Again"
        }
        
        answerCalculate1 = 0
        
    }
    

    @IBAction func btnButton2ACTION(sender: UIButton) {
        if answerCalculate2 == answer {
            totalCorrect = totalCorrect + 1
            lblAnswer.text = String(answer)
            lblCorrectIncorrect.text = "Correct :)"
            lblTotalCorrect.text = "Total Answers Correct: \(totalCorrect)"
            
            btnButton1.setTitle("", forState: UIControlState.Normal)
            btnButton2.setTitle("", forState: UIControlState.Normal)
            btnButton3.setTitle("", forState: UIControlState.Normal)
        } else {
            lblCorrectIncorrect.text = "Please Try Again"
        }
        
        answerCalculate2 = 0
    }
    
   
    @IBAction func bntButton3ACTION(sender: UIButton) {
        if answerCalculate3 == answer {
            totalCorrect = totalCorrect + 1
            lblAnswer.text = String(answer)
            lblCorrectIncorrect.text = String(totalCorrect)
            lblTotalCorrect.text = "Total Answers Correct: \(totalCorrect)"
            
            btnButton1.setTitle("", forState: UIControlState.Normal)
            btnButton2.setTitle("", forState: UIControlState.Normal)
            btnButton3.setTitle("", forState: UIControlState.Normal)
        } else {
            lblCorrectIncorrect.text = "Please Try Again"
        }
        
        answerCalculate3 = 0
    }
    
    @IBAction func btnNextQuestion(sender: UIButton) {
        lblTotalCorrect.text = String(totalCorrect)
        lblAnswer.text = "?"
        startGameLogic()
    }
    
    func startGameLogic() -> Bool {
        
        numberFirst = Int(arc4random_uniform(20))
        numberSecond = Int(arc4random_uniform(20))
        
        lblNumber1.text = String(numberFirst)
        lblNumber2.text = String(numberSecond)
        
        answer = numberFirst + numberSecond
        buttonLogic()
        
        return true
    }
    
    func buttonLogic() -> Bool {
        
        buttonAnswer = Int(arc4random_uniform(2))
        
        if buttonAnswer == 0 {
            btnButton1.setTitle(String(answer), forState: UIControlState.Normal)
            
            var tempAnswer1 = Int(arc4random_uniform(20))
            var tempAnswer2 = Int(arc4random_uniform(20))
            
            if tempAnswer1 == answer {
                tempAnswer1 = Int(arc4random_uniform(20))
            }
            if tempAnswer2 == answer {
                tempAnswer2 = Int(arc4random_uniform(20))
            }
            
            btnButton2.setTitle(String(tempAnswer1), forState: UIControlState.Normal)
            btnButton3.setTitle(String(tempAnswer2), forState: UIControlState.Normal)
            
            answerCalculate1 = answer
        }
        if buttonAnswer == 1 {
            btnButton2.setTitle(String(answer), forState: UIControlState.Normal)
            
            var tempAnswer1 = Int(arc4random_uniform(20))
            var tempAnswer2 = Int(arc4random_uniform(20))
            
            btnButton1.setTitle(String(tempAnswer1), forState: UIControlState.Normal)
            btnButton3.setTitle(String(tempAnswer2), forState: UIControlState.Normal)
            
            answerCalculate2 = answer
        }
        if buttonAnswer == 2 {
            btnButton3.setTitle(String(answer), forState: UIControlState.Normal)
            
            var tempAnswer1 = Int(arc4random_uniform(20))
            var tempAnswer2 = Int(arc4random_uniform(20))
            
            btnButton2.setTitle(String(tempAnswer1), forState: UIControlState.Normal)
            btnButton1.setTitle(String(tempAnswer2), forState: UIControlState.Normal)
            
            answerCalculate3 = answer
        }
        
        return true
    }
}

