//
//  Screen1ViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 12/03/23.
//

import UIKit

class Screen1ViewController: UIViewController {
    @IBOutlet var screenTitleLabel:UILabel!
    
    var screenColor:UIColor?
    var screenTitle:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        screenTitleLabel.text = screenTitle
        view.backgroundColor = screenColor

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
