//
//  GroceryViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 10/03/23.
//

import UIKit

class GroceryViewController: UIViewController {
    var groceriesImages = [UIImage(named: "Bakery Item"),UIImage(named: "Coffee&Tea"),UIImage(named: "Fruits&Veggies"),UIImage(named:"Juice&Drinks"),UIImage(named:"Meat"),UIImage(named: "Dairy&Eggs") ]
    
    @IBOutlet var groceryCollectionView:UICollectionView!
override func viewDidLoad() {
        super.viewDidLoad()
    
}

}
extension GroceryViewController:UICollectionViewDataSource{
    

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return groceriesImages.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = groceryCollectionView.dequeueReusableCell(withReuseIdentifier: "GroceryCollectionViewCell", for: indexPath) as? GroceryCollectionViewCell
    cell?.groceryItems.image = groceriesImages[indexPath.row]
   return cell ?? UICollectionViewCell()
    
}

}
extension GroceryViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.size.width-40)/2
        return CGSize(width: width, height: 200)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        
    }
    
   }
extension GroceryViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath){
        
    }
    
}
    

