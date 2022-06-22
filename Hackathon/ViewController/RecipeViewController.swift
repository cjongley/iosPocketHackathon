//
//  RecipeViewController.swift
//  Hackathon
//
//  Created by Kin Kwan Chang on 22/6/22.
//

import UIKit

class RecipeViewController: UIViewController {

    var choiceSent: String = ""
    var queryString: String = ""
    
    @IBOutlet weak var cuisine: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cuisine.text = "\(choiceSent)"
        getData()
    }
    
    func searchTerms() -> String{
        choiceSent.lowercased()
    }
    
    func getData() {
        let getUrl = "https://api.spoonacular.com/recipes/random?apiKey=\(APIKEY)&number=1&tags=\(searchTerms())"
        print(getUrl)
        Networking.request(url: URL(string:getUrl), method: .get) { (result: Result<Welcome, Error>) in
            print(result)
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
