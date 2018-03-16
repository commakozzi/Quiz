//
//  ViewController.swift
//  Quiz
//
//  Created by Commakozzi on 3/15/18.
//  Copyright © 2018 Bluewolftek. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    var currentQuestionIndex: Int = 0
    
    //MARK: Questions and Answers
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    //MARK: Setup ViewController
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
        
    }
    
    //MARK: Actions
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        
        currentQuestionIndex += 1
        
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
        
    }



}

