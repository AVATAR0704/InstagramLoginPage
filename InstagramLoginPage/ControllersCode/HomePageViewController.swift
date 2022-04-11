//
//  HomePagwViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 09/04/22.
//

import UIKit

class HomePageViewController: BaseViewController {

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
