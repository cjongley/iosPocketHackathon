//
//  ChoiceViewController.swift
//  Hackathon
//
//  Created by Claire Ongley on 21/6/22.
//
import UIKit
import Foundation

class ChoiceViewController: UIViewController {
    override func viewDidLoad() {
        checkDietaryProblem()
        //do other setup
    }
    
    func checkDietaryProblem (){
            createAlert(title: "Before You Start", message: "Any dietary problem?")
    }
    
    // Create alert for display
    func createAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "Yes", style: .default) { (action) -> Void in
            let toView = self.storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
            self.navigationController?.pushViewController(toView, animated: true)
        }
        
        // Add action for user dismiss the alert by click "Yes"
        alert.addAction(action)
        
        // Add action for user dismiss the alert by click "No"
        alert.addAction(UIAlertAction(title: "No", style: UIAlertAction.Style.default, handler: { (action) in alert.dismiss(animated: true, completion:nil)}))
        // Present the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

