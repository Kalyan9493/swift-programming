//
//  ViewController.swift
//  QuizzApp
//
//  Created by Kalyan on 22/02/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBarView: UIProgressView!
    
    var questionLogic = QuestionLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        questionLabel.text = questionLogic.questions[0].text
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let selectedAnswer = sender.currentTitle!
        let ans = questionLogic.checkAnswer(selectedAnswer: selectedAnswer)
        if ans {
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        questionLogic.nextQuestion()
        scoreLabel.text =  "Score : \(questionLogic.getScore())"
        Timer.scheduledTimer(timeInterval:0.5, target:self, selector:#selector(changeQuestion), userInfo:nil, repeats:false)

        print("Timer Executed")
    }
    @objc func changeQuestion(){
        questionLabel.text = questionLogic.getQuestionText()
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBarView.progress = questionLogic.getProgress()
    }
}

