//
//  RecipeViewController.swift
//  Hackathon
//
//  Created by Kin Kwan Chang on 22/6/22.
//

import UIKit

class RecipeViewController: UIViewController {

    var choiceSent: String = ""
    
    @IBOutlet weak var cuisine: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cuisine.text = "\(choiceSent)"
        // Do any additional setup after loading the view.
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
