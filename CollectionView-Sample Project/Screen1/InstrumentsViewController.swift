//
//  InstrumentsViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 09/03/23.
//

import UIKit

class InstrumentsViewController: UIViewController {
    @IBOutlet var titleLabel:UILabel!
    @IBOutlet var backButton:UIButton!
    @IBOutlet var searchButton:UIButton!
    @IBOutlet var instrumentsCollectionView:UICollectionView!
    var Images = [UIImage(named: "CommonAssets"),UIImage(named:"Crypto"),UIImage(named:"Currencies"),UIImage(named:"Equities"),UIImage(named:"ETF's"),UIImage(named:"Fixed Incomes"),UIImage(named:"Indices"),UIImage(named:"MostActive")]
     var Names = ["CommonAssets","Crypto","Currencies","Equities","ETF's","Fixed Incomes","Indices","MostActive"]
     var Counts = ["99","123","100","90","156","578","47","120"]
    
  
    

    override func viewDidLoad() {
        super.viewDidLoad()
     }
}
extension InstrumentsViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InstrumentsCollectionViewCell", for: indexPath) as? InstrumentsCollectionViewCell
        cell?.instrumentImage?.image = Images[indexPath.item]
        cell?.insturmentName?.text = Names[indexPath.item]
        cell?.instrumentCount?.text = Counts[indexPath.item]
        cell?.layer.cornerRadius  = 20
        return cell ?? UICollectionViewCell()
    }
    
    
}
extension InstrumentsViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = ((collectionView.frame.size.width-10)/2)
        
        return CGSize(width: width, height: 200)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20.0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10.0
    }
    
}
    
    
