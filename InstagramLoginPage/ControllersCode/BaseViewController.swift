//
//  ViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 11/04/22.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func appDelegate() -> AppDelegate {
        return AppDelegate()
    }
    
    func sceneDelegate() -> SceneDelegate {
    
        return SceneDelegate()
    }

    

}
