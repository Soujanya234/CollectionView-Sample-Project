//
//  PracticeViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 09/03/23.
//

import UIKit

class PracticeViewController: UIViewController {
    
    
    @IBOutlet var listCollectionView:UICollectionView!
      override func viewDidLoad() {
        super.viewDidLoad()
}
    
}
extension PracticeViewController:UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.section == 0{
        var cell = UICollectionViewCell()
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ReUseCell", for: indexPath)
        return cell
        }
        
        else{
            var cell1 = UICollectionViewCell()
            cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "ReUseCell", for: indexPath)
            return cell1
            
        }
    }
    
}
extension PracticeViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("Indexpath Section", indexPath.section)
        print ("Indexpath Item", indexPath.item)
    }
}
extension PracticeViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        return CGSize(width:200, height: 150)
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50.0
    }

    
}

    

