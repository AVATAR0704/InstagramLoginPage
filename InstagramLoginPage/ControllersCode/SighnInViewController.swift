//
//  SighnInViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 08/04/22.
//

import UIKit

class SighnInViewController: UIViewController {

    //MARK: UI elements
    
    let nmviewBig: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        
        return view
    }()
    
    
    let nmviewSmall: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.white
        
        return view
    }()
    
    let nmviewShadow: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor.lightGray
        
        return view
    }()
    
    let nmInstalabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Instagram"
        label.textAlignment = .center
        return label
    }()
    
    let nmLoginTextfield: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Username"
        return textfield
    }()
    
    let nmPasswordTextfield: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "Password"
        return textfield
    }()
    
    
    let nmBluebutton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign In", for: UIControl.State.normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.layer.cornerRadius = 5
        button.backgroundColor = UIColor.systemBlue
        return button
    }()
    
    let nmQuestionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Don't have an account?"
        return label
    }()
    
    let nmSignUpButton: UIButton = {
        let button = UIButton(type: UIButton.ButtonType.system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.backgroundColor = UIColor.clear
        return button
    }()
    
    let nmBigStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = NSLayoutConstraint.Axis.vertical
        stackview.spacing = 20
        stackview.distribution = .fillEqually
        return stackview
    }()
    
    let nmSmallStackView: UIStackView = {
        let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.axis = NSLayoutConstraint.Axis.horizontal
        stackview.spacing = 5
        
        return stackview
    }()
    
    //MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()

        startFunction()
    }
    

   //MARK: Methods
   
    func startFunction() {
        viewSettings()
       
        self.view.addSubview(nmviewBig)
        self.view.addSubview(nmviewShadow)
        self.view.addSubview(nmviewSmall)
        
        self.nmviewBig.addSubview(nmBigStackView)
        self.nmviewSmall.addSubview(nmSmallStackView)
        
        nmBigStackView.addArrangedSubview(nmInstalabel)
        nmBigStackView.addArrangedSubview(nmLoginTextfield)
        nmBigStackView.addArrangedSubview(nmPasswordTextfield)
        nmBigStackView.addArrangedSubview(nmBluebutton)
        
        nmSmallStackView.addArrangedSubview(nmQuestionLabel)
        nmSmallStackView.addArrangedSubview(nmSignUpButton)
        
                
        startConstraints()
    }
    
    
    func viewSettings() {
        view.backgroundColor = UIColor.white
        
        nmInstalabel.font = nmInstalabel.font.withSize(30)
        
        
        hideKeyboardWhenTappedAround()
    // nmInstalabel.font = nmInstalabel.font.withSize(nmInstalabel.frame.height * 3 / 4)
    //  nmQuestionLabel.font = nmQuestionLabel.font.withSize(nmSmallStackView.frame.height * 3 / 4)
    //  nmSignUpButton.titleLabel?.font = UIFont(name: "AlNile-Bold", size: nmSmallStackView.frame.height * 3 / 4)
       
        nmQuestionLabel.font = nmQuestionLabel.font.withSize(17)
        
        nmSignUpButton.titleLabel?.font = UIFont(name: "AlNile-Bold", size: 17)
        
    }
    
    func startConstraints() {
        
        nmviewSmall.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        nmviewSmall.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        nmviewSmall.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        nmviewSmall.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.125).isActive = true
        
        

        nmviewShadow.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        nmviewShadow.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        nmviewShadow.heightAnchor.constraint(equalToConstant: 1).isActive = true
        nmviewShadow.bottomAnchor.constraint(equalTo: nmviewSmall.topAnchor).isActive = true
        
        
        nmviewBig.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        nmviewBig.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        nmviewBig.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        nmviewBig.bottomAnchor.constraint(equalTo: nmviewShadow.topAnchor).isActive = true
        
        
        nmBigStackView.leftAnchor.constraint(equalTo: nmviewBig.leftAnchor, constant: 20).isActive = true
        nmBigStackView.rightAnchor.constraint(equalTo: nmviewBig.rightAnchor, constant: -20).isActive = true
        nmBigStackView.heightAnchor.constraint(equalTo: nmviewBig.heightAnchor, multiplier: 0.33).isActive = true
        nmBigStackView.centerYAnchor.constraint(equalTo: nmviewBig.centerYAnchor).isActive = true
        
        UIStackView.joyla(stackview: nmBigStackView, views: [nmInstalabel, nmLoginTextfield,nmPasswordTextfield, nmBluebutton])
        
        
        nmSmallStackView.centerYAnchor.constraint(equalTo: nmviewSmall.centerYAnchor).isActive = true
        nmSmallStackView.centerXAnchor.constraint(equalTo: nmviewSmall.centerXAnchor).isActive = true
        nmSmallStackView.heightAnchor.constraint(equalTo: nmviewSmall.heightAnchor, multiplier: 0.2).isActive = true
       
        
        
        
        
        UIStackView.joyla(stackview: nmSmallStackView, views: [nmQuestionLabel,nmSignUpButton])
        
        
        
    }
    
}




extension UIStackView {
    
    class func joyla(stackview: UIStackView, views: [UIView]) {
        if stackview.axis == .vertical {
            for viiew in views {
                viiew.leftAnchor.constraint(equalTo: stackview.leftAnchor).isActive = true
                viiew.rightAnchor.constraint(equalTo: stackview.rightAnchor).isActive = true
            }
            
        }else if stackview.axis == .horizontal {
            for viiew in views {
                viiew.topAnchor.constraint(equalTo: stackview.topAnchor).isActive = true
                viiew.bottomAnchor.constraint(equalTo: stackview.bottomAnchor).isActive = true
            }
        }
    }
}


extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}
