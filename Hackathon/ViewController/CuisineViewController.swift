//
//  CuisineViewController.swift
//  Hackathon
//
//  Created by Kin Kwan Chang on 22/6/22.
//

import UIKit

class CuisineViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Send British
        if segue.identifier == "chooseBritish"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "British"
            //Hide back button
//            toView.navigationItem.setHidesBackButton(true, animated: true)
        }
//        else if segue.identifier == "chooseBritish"{
//            let toView = segue.destination as! RecipeViewController
//            // Pass data to RecipeViewController
//            toView.choiceSent = "British"
//            //Hide back button
//            toView.navigationItem.setHidesBackButton(true, animated: true)
//        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
