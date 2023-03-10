//
//  FoodItemsViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 10/03/23.
//

import UIKit

class FoodItemsViewController: UIViewController {
var foodImages = [UIImage(named: "Bakery"),UIImage(named:"Diary"),UIImage(named:"SeaFoods"),UIImage(named:"Snacks")]
     var foodNames = ["Bakery","    Diary","SeaFoods","Snacks"]
    
    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var mainTitleLabel:UILabel!
    @IBOutlet var profileImage:UIImageView!
    @IBOutlet var searchFoodTextField:UITextField!
    
    @IBOutlet var foodItemsCollectionView:UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        searchFoodTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: searchFoodTextField.frame.height))
        searchFoodTextField.leftViewMode = .always
        profileImage.layer.cornerRadius = 20
      
    }
}
extension FoodItemsViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodItemsCollectionViewCell", for: indexPath) as? FoodItemsCollectionViewCell
        cell?.itemNames.text = foodNames[indexPath.row]
        cell?.itemImages.image = foodImages[indexPath.row]
        return cell ?? UICollectionViewCell()
    }
    }
extension FoodItemsViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.size.width)/4)
       
        return CGSize(width: width, height:width)
    }
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout,
minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0.0
       }
       
       func collectionView(_ collectionView: UICollectionView,
                           layout collectionViewLayout: UICollectionViewLayout,
                           minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
           return 0.0
       }
    
    
    
    
    
}
