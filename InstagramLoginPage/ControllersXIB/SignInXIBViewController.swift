//
//  SignInXIBViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 08/04/22.
//

import UIKit

class SignInXIBViewController: BaseViewController {

    
    
    @IBOutlet weak var bigViiew: UIView!
    
    @IBOutlet weak var smalView: UIView!
    
    @IBOutlet weak var nmbigStackview: UIStackView!
    
    @IBOutlet weak var smallStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }

//MARK: Methods
    
    func startFunction() {
        
        hideKeyboardWhenTappedAround()
        
        bigViiew.translatesAutoresizingMaskIntoConstraints = false
        smalView.translatesAutoresizingMaskIntoConstraints = false
        nmbigStackview.translatesAutoresizingMaskIntoConstraints = false
        smallStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        smalView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.08).isActive = true
        
        nmbigStackview.heightAnchor.constraint(equalTo: bigViiew.heightAnchor, multiplier: 0.333).isActive = true
        
        smallStackView.heightAnchor.constraint(equalTo: smalView.heightAnchor, multiplier: 0.333).isActive = true
        
    }
    
    
    //MARK: Actions
    
    @IBAction func nmSignInTapped(_ sender: UIButton) {
        
        
        sceneDelegate().callHomePageXIB()
        print(#function)
    }
    
    @IBAction func nmSignUpTapped(_ sender: UIButton) {
        present(SignUpXIBViewController(), animated: true)
    }
    
}
