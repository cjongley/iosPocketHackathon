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
        }
        else if segue.identifier == "chooseChinese"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Chinese"
        }
        else if segue.identifier == "chooseItalian"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Itlian"
        }
        else if segue.identifier == "chooseJapanese"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Japanese"
        }
        else if segue.identifier == "chooseKorean"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Korean"
        }
        else if segue.identifier == "chooseMexican"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Mexican"
        }
        else if segue.identifier == "chooseVegetarian"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Vegetarian"
        }
        else if segue.identifier == "chooseSurpriseMe"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Surprise!!!"
        }
        else if segue.identifier == "chooseOther"{
            let toView = segue.destination as! RecipeViewController
            // Pass data to RecipeViewController
            toView.choiceSent = "Hope you like it"
        }
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
