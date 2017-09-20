//
//  CreateGoalVC.swift
//  GoalPost
//
//  Created by Stanley Pan on 20/09/2017.
//  Copyright © 2017 Stanley Pan. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {
    
    //  MARK: Outlets
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermButton: UIButton!
    @IBOutlet weak var longTermButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    //  MARK: Variables
    var goalType: GoalType = .shortTerm

    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.bindToKeyboard()
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
        goalTextView.delegate = self
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismissDetail()
    }
    
    @IBAction func shortTermButtonPressed(_ sender: UIButton) {
        goalType = .shortTerm
        shortTermButton.setSelectedColor()
        longTermButton.setDeselectedColor()
    }
    
    @IBAction func longTermButtonPressed(_ sender: UIButton) {
        goalType = .longTerm
        longTermButton.setSelectedColor()
        shortTermButton.setDeselectedColor()
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishedGoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishedGoalVC") as? FinishedGoalVC else { return }
            finishedGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentDetail(finishedGoalVC)
        }
    }
}

extension CreateGoalVC: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = .black
    }
}













