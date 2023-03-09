//
//  PracticeCustomCellViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 09/03/23.
//

import UIKit

class PracticeCustomCellViewController: UIViewController{
    @IBOutlet var listCellCollectionView:UICollectionView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
}
    }
extension PracticeCustomCellViewController:UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as? CustomCollectionViewCell
        cell?.logoImage?.image = UIImage(systemName: "person")
        return cell ?? UICollectionViewCell()
    }
    
}
