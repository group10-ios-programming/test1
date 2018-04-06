//
//  ViewController.swift
//  QuizGame
//
//  Created by NhatThanh on 3/31/18.
//  Copyright © 2018 NhatThanh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let questions = ["Favorite Pet ?","Favorite Color ?","Where was you born ?"]
    let answers = [["gogo","cat","bird"],["blue","black","green"],["Tokyo","New York","Viet Nam"]]
    
    //Variable
    var currentQuestion = 0
    var rightAnswerPlacement:UInt32 = 0
    var points = 0
    //Label
    @IBOutlet weak var lbl: UILabel!
    
    //Button
    @IBAction func action(_ sender: Any) {
        if((sender as AnyObject).tag == Int(rightAnswerPlacement))
        {
            print("RIGHT !")
            points += 1
        }
        else
        {
            print("WRONG ! ! !")
        }
        
        if (currentQuestion != questions.count)
        {
            newQuestion()
        }
        else {
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        newQuestion()
    }
    
    
    //Function that dispalys new question
    func newQuestion()
    {
        lbl.text = questions[currentQuestion]
        rightAnswerPlacement = arc4random_uniform(3)+1
        
        //Create a button
        var button:UIButton = UIButton()
        var x = 1
        for i in 1...3{
            //Create a button
            button = view.viewWithTag(i) as! UIButton
            
            if(i==Int(rightAnswerPlacement))
            {
                button.setTitle(answers[currentQuestion][0], for: .normal)
            }
            else{
                button.setTitle(answers[currentQuestion][x], for: .normal)
                x = 2
            }
        }
        currentQuestion += 1
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showScore"{
            let scence1ViewController = segue.destination as!showScoreViewController
            scence1ViewController.pointsFromVC = points
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

