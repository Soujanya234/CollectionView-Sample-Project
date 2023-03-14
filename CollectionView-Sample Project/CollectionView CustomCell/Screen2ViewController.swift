//
//  Screen2ViewController.swift
//  CollectionView-Sample Project
//
//  Created by Soujanya Mandadapu on 12/03/23.
//

import UIKit

class Screen2ViewController: UIViewController {
    @IBOutlet var screenTitleLabel:UILabel!
    
    var screenColor:UIColor?
    var screenTitle:String?

    override func viewDidLoad() {
        super.viewDidLoad()
        screenTitleLabel.text = screenTitle
        view.backgroundColor = screenColor

        // Do any additional setup after loading the view.
    }
    


}
