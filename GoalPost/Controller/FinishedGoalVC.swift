//
//  FinishedGoalVC.swift
//  GoalPost
//
//  Created by Stanley Pan on 20/09/2017.
//  Copyright © 2017 Stanley Pan. All rights reserved.
//

import UIKit

class FinishedGoalVC: UIViewController {
    
    //  MARK: Outlets
    @IBOutlet weak var pointsTextField: UITextField!
    @IBOutlet weak var createGoalButton: UIButton!
    
    //  MARK: Variables
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalButton.bindToKeyboard()
        pointsTextField.delegate = self
    }
    
    @IBAction func createGoalButtonPressed(_ sender: UIButton) {
        print("Create goal button was pressed.")
    }
}

extension FinishedGoalVC: UITextFieldDelegate {
    
    
}
