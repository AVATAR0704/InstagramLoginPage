//
//  HomeXIBViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 11/04/22.
//

import UIKit

class HomeXIBViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }

    func startFunction() {
        view.backgroundColor = UIColor.white
        title = "Instagram"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    

}
