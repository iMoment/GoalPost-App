//
//  GoalsVC.swift
//  GoalPost
//
//  Created by Stanley Pan on 19/09/2017.
//  Copyright © 2017 Stanley Pan. All rights reserved.
//

import UIKit
import CoreData

let appDelegate = UIApplication.shared.delegate as? AppDelegate

class GoalsVC: UIViewController {
    
    //  MARK: Outlets
    @IBOutlet weak var goalsTableView: UITableView!
    
    //  MARK: Variables
    var goals = [Goal]()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.fetch { (isCompleted) in
            if isCompleted {
                if goals.count >= 1 {
                    goalsTableView.isHidden = false
                } else {
                    goalsTableView.isHidden = true
                }
            }
        }
        goalsTableView.reloadData()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        goalsTableView.delegate = self
        goalsTableView.dataSource = self
        goalsTableView.isHidden = false
    }
    
    @IBAction func addGoalButtonPressed(_ sender: UIButton) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else { return }
        presentDetail(createGoalVC)
    }
}

extension GoalsVC: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? GoalCell else { return UITableViewCell() }
        let goal = goals[indexPath.row]
        cell.configureCell(goal: goal)
        return cell
    }
}

extension GoalsVC: UITableViewDelegate {
    
}

extension GoalsVC {
    func fetch(completion: (_ complete: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        
        let fetchRequest = NSFetchRequest<Goal>(entityName: "Goal")
        
        do {
            goals = try managedContext.fetch(fetchRequest)
            completion(true)
        } catch {
            debugPrint("An error occurred: \(error.localizedDescription)")
            completion(false)
        }
    }
}





















