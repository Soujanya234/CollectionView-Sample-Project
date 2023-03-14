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
extension PracticeCustomCellViewController:UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.item == 0{
            performSegue(withIdentifier:"Segue1", sender: self)
            
        }
        else if indexPath.item == 1{
            performSegue(withIdentifier: "Segue2", sender: self)
            
        }
    }
    override func prepare(for segue:  UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue1"{
            let firstVC = segue.destination as? Screen1ViewController
            firstVC?.screenColor = .green
            firstVC?.screenTitle = "First Screen Title"
            
            
        }
        else if segue.identifier == "Segue2"{
            let secondVC = segue.destination as?
            Screen2ViewController
            secondVC?.screenColor = .red
            secondVC?.screenTitle = "Second Screen Title"
            
        }
    }
}
