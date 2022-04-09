//
//  SignUpXIBViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 08/04/22.
//

import UIKit

class SignUpXIBViewController: UIViewController {

    
    @IBOutlet weak var nmBigView: UIView!
    
    @IBOutlet weak var nmsmallView: UIView!
    
    @IBOutlet weak var nmBigStackView: UIStackView!
    
    @IBOutlet weak var nmsmallStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }


    func startFunction() {
        
        nmBigView.translatesAutoresizingMaskIntoConstraints = false
        nmsmallView.translatesAutoresizingMaskIntoConstraints = false
        nmBigStackView.translatesAutoresizingMaskIntoConstraints = false
        nmsmallStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        nmsmallView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        
        nmBigStackView.heightAnchor.constraint(equalTo: nmBigView.heightAnchor, multiplier: 0.5).isActive = true
        
        nmsmallStackView.heightAnchor.constraint(equalTo: nmsmallView.heightAnchor, multiplier: 0.4).isActive = true
        
        
    }
    
    
    //MARK: Actions

    @IBAction func nmSignUpButton(_ sender: UIButton) {
        print(#function)
    }
    
    @IBAction func nmSignInDismis(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
