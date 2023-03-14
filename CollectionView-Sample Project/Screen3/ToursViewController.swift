//
//  ToursViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 10/03/23.
//

import UIKit

class ToursViewController: UIViewController {
    var tourImages = [UIImage(named: "City1"),UIImage(named:"City2"), UIImage(named:"City3"), UIImage(named:"City4"), UIImage(named:"City5"), UIImage(named:"City6"), UIImage(named: "City7"),UIImage(named: "City3"),UIImage(named: "City1"),UIImage(named: "City2"),UIImage(named: "City5"),UIImage(named: "City1"),UIImage(named:"City2"), UIImage(named:"City3"), UIImage(named:"City4"), UIImage(named:"City5"), UIImage(named:"City6"), UIImage(named: "City7"),UIImage(named: "City3"),UIImage(named: "City1"),UIImage(named: "City2"),UIImage(named: "City5")]
    @IBOutlet var toursCollectionView:UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
extension ToursViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tourImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ToursCollectionViewCell", for: indexPath) as? ToursCollectionViewCell
        cell?.cityImage.image = tourImages[indexPath.row]
        return cell ?? UICollectionViewCell()
    }
    
    
}
extension ToursViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.size.width)/4
        return CGSize(width: width, height:width)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
    }
    
    
}
extension ToursViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0{
            performSegue(withIdentifier:"SelectSegue" , sender: self)
        }
        
       
    }
}
