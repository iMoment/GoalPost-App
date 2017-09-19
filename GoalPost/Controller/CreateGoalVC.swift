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

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func shortTermButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func longTermButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
    }
}
