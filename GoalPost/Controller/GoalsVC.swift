//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Stanley Pan on 19/09/2017.
//  Copyright © 2017 Stanley Pan. All rights reserved.
//

import UIKit
import CoreData

class GoalsVC: UIViewController {
    
    //  MARK: Outlets
    @IBOutlet weak var goalsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        goalsTableView.delegate = self
        goalsTableView.dataSource = self
        goalsTableView.isHidden = false
    }
    
    @IBAction func addGoalButtonPressed(_ sender: UIButton) {
        
    }
}

extension GoalsVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        cell.configureCell(description: "Eat salad twice a week.", type: .shortTerm, goalProgressAmount: 2)
        return cell
    }
}

extension GoalsVC: UITableViewDelegate {
    
}
