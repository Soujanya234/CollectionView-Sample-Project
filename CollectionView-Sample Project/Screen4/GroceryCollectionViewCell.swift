//
//  GroceryCollectionViewCell.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 10/03/23.
//

import UIKit

class GroceryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var groceryItems:UIImageView!
    override func layoutSubviews() {
        groceryItems.layer.cornerRadius = 20
        groceryItems.clipsToBounds = true
        
        
    }
    
}
