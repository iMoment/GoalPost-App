//
//  FinishedGoalVC.swift
//  GoalPost
//
//  Created by Stanley Pan on 20/09/2017.
//  Copyright © 2017 Stanley Pan. All rights reserved.
//

import UIKit
import CoreData

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
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismissDetail()
    }
    
    @IBAction func createGoalButtonPressed(_ sender: UIButton) {
        print("Create goal button was pressed.")
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
    }
}

extension FinishedGoalVC: UITextFieldDelegate {
    
}
















