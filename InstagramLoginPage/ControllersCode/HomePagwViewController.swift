//
//  HomePagwViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 09/04/22.
//

import UIKit

class HomePagwViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

     startFunc()
    }
    
//MARK: Methods
    func startFunc() {
        view.backgroundColor = UIColor.white
        title = "Instagram"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

}
