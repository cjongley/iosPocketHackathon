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
    
    @IBOutlet weak var recipeTitleLbl: UILabel!
    @IBOutlet weak var summaryRecipeLbl: UILabel!
    @IBOutlet weak var recipeImage: UIImageView!
    @IBAction func newRecipeBtn(_ sender: Any) {
        getData()
    }
    @IBAction func onClickGoToRecipeBtn(_ sender: Any) {
        UIApplication.shared.open(URL(string: "")!, options: [:], completionHandler: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        recipeTitleLbl.text = ""
        summaryRecipeLbl.numberOfLines = 0
        
    }
    
    func searchTerms() -> String{
        choiceSent.lowercased()
    }
    
    func getData(){
        let getUrl = "https://api.spoonacular.com/recipes/random?apiKey=\(APIKEY)&number=1&tags=\(searchTerms())"
        print(getUrl)
        Networking.request(url: URL(string:getUrl), method: .get) { [weak self] (result: Result<Welcome, Error>) in
            switch result{
            case let .success(data):
                let item = data.recipes?.first
                DispatchQueue.main.async {
                    self?.recipeTitleLbl.text = item?.title
                    self?.summaryRecipeLbl.attributedText = item?.summary?.htmlToAttributedString
                }
                self?.setImage(string:item?.image! ?? "")
            case .failure:
                break
            }
        }
    }
    
    func setImage(string:String){
        Networking.downloadImage(url: string) {[weak self] result in
            switch result{
            case let .success(data):
                DispatchQueue.main.async {
                    self?.recipeImage.image = data
                }
            case .failure:
                break
            }
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
