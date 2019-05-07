//
//  ViewController.swift
//  Bdelg013
//
//  Created by brian delgado on 8/30/18.
//  Copyright © 2018 brian delgado. All rights reserved.
//

// PROGRAMMER:  Brian Delgado
// PANTHERID:   6058871
// CLASS:       COP 465501
// INSTRUCTOR:  Steve Luis ECS 282
// ASSIGNMENT:  #1 Program
// DUE:         Thursday 08/30/18
//

import UIKit

class ViewController: UIViewController {
    
    var currentQuestionIndex: Int = 0
    var questionCounter: Int = 0
    var answerCounter: Int = 0
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes" ]
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerCounterLabel: UILabel!
    @IBOutlet weak var questionCounterLabel: UILabel!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        questionCounter += 1        //increment question counter
        questionCounterLabel.text  = questionCounter.description
        //display question amount/counter
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerCounter += 1      //increment answer counter
        answerCounterLabel.text  = answerCounter.description
        //display answer amount/counter
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    
}
