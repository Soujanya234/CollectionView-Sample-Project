//
//  TagViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 14/03/23.
//

import UIKit

class TagViewController: UIViewController {
    @IBOutlet var listTableView:UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        listTableView.register(UITableViewCell.self, forCellReuseIdentifier: "TableCell")
    }
    @IBAction func listandGridButtonTapped(){
        let btnTag = 0
        if btnTag == 1{
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
                cell.imageView?.image = UIImage(named: "Bakery Item")
                return cell
            }
           
            }
        else
        {
            func collectionView(_ collectionView: UICollectionView,
                                layout collectionViewLayout: UICollectionViewLayout,
                                sizeForItemAt indexPath: IndexPath) -> CGSize {
                return CGSize(width: 200, height: 200)
            }
            
    }
}
    
   
       
    }
extension TagViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath)
        cell.imageView?.image = UIImage(named: "Bakery Item")
        return cell
    }
}
