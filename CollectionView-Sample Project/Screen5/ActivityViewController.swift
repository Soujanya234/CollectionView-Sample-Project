//
//  ActivityViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 14/03/23.
//

import UIKit

class ActivityViewController: UIViewController {
    @IBOutlet var activityImage:UIImageView!
    
    var activitiesList = [UIImage(named:"Walking"),UIImage(named: "Cycling"),UIImage(named: "Driving"),UIImage(named: "Train"),UIImage(named: "Hiking"),UIImage(named: "Flight")]
    @IBOutlet var activityCollectionView:UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
}
    }
extension ActivityViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return activitiesList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "ActivityCell", for: indexPath) as? ActivityCollectionViewCell
        cell?.image.image = activitiesList[indexPath.row]
        return cell ?? UICollectionViewCell()
    }
    
    }
extension ActivityViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (collectionView.frame.size.width-10)/2
        return CGSize(width: width, height:width)
    }

}
