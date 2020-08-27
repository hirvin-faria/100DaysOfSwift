//
//  ViewController.swift
//  Project2
//
//  Created by HirvinFaria on 23/08/20.
//  Copyright © 2020 hirvinfaria. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var counterQuest = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        countries.append("estonia")
        countries.append("france")
        countries.append("germany")
        countries.append("ireland")
        countries.append("italy")
        countries.append("monaco")
        countries.append("nigeria")
        countries.append("poland")
        countries.append("russia")
        countries.append("spain")
        countries.append("uk")
        countries.append("us")
        
        // segunda maneira de executar a inserção
        // countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor(red: 1.0, green: 0.8, blue: 0.2, alpha: 1.0).cgColor
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(viewScore))
        
        askQuestion()
    
    }
    
    @objc func viewScore() {
        dispatchAlert(title: "Score", message: String(score), actionTitle: "Close")
    }
    
    func askQuestion(action: UIAlertAction! = nil) {
        countries.shuffle() // Embaralho o Array
        
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        correctAnswer = Int.random(in: 0...2)
        
        title = getTitle()
    }
    
    func getTitle() -> String {
        let titleScope = "Select: \(countries[correctAnswer].uppercased()) | Score: \(score)"
        return titleScope
    }
    
    func upgradeCounter() {
        counterQuest += 1
    }
    
    func dispatchAlert(title: String, message: String, actionTitle: String) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: actionTitle, style: .default, handler: askQuestion))
        present(ac, animated: true)
    }
    
    func restrat(){
        score = 0
        counterQuest = 0
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String
        var message: String
        
        if counterQuest < 10 {
            
            if sender.tag == correctAnswer {
                title = "Correct"
                message = "Your score is \(score)."
                score += 1
            } else {
                title = "Wrong"
                message = "That's the flag of \(countries[sender.tag])"
                score -= 1
            }
        
            upgradeCounter()
            dispatchAlert(title: title, message: message, actionTitle: "Continue")
        
        } else {
            dispatchAlert(title: "Finish", message: "Your score is \(score) in \(counterQuest) trys", actionTitle: "Restrart")
            restrat()
        }
        
    }
    
}

