//
//  SighnInViewController.swift
//  InstagramLoginPage
//
//  Created by Macservis on 08/04/22.
//

import UIKit

class SignInViewController: BaseViewController {

    var usersServer: [User] = []
    
    
    
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
        button.addTarget(self, action: #selector(homePageGo), for: UIControl.Event.touchDown)
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
        button.addTarget(self, action: #selector(tappedSignUp), for: UIControl.Event.touchDown)
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
    
    let nmErrorLabel: UILabel = {
        let label = UILabel()
        label.isHidden = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "There is no user with this username"
        label.textAlignment = .center
        label.textColor = UIColor.systemRed
        label.font = label.font.withSize(12)
        label.numberOfLines = 2
        return label
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
        self.nmviewBig.addSubview(nmErrorLabel)
        
        nmBigStackView.addArrangedSubview(nmInstalabel)
        nmBigStackView.addArrangedSubview(nmLoginTextfield)
        nmBigStackView.addArrangedSubview(nmPasswordTextfield)
        nmBigStackView.addArrangedSubview(nmBluebutton)
        
        nmSmallStackView.addArrangedSubview(nmQuestionLabel)
        nmSmallStackView.addArrangedSubview(nmSignUpButton)
        
        serverSetting()
        startConstraints()
        
    }
    
    
    
    func serverSetting() {
        usersServer.append(User(fullName: "Samandar", email: "samandar@gmail.com", phone: "+998916974131",userName: "samandar_2002", password: "150602ST"))
        usersServer.append(User(fullName: "Amirqul", email: "amirqul@gmail.com", phone: "+99898231004", userName: "Amir_1004", password: "100403AA"))
        usersServer.append(User(fullName: "Sardorbek", email: "sardor@gmail.com", phone: "+998912040678", userName: "fazliddinoff", password: "070203SF"))
        usersServer.append(User(fullName: "Shahboz", email: "shahboz@gmail.com", phone: "+998900036267", userName: "Shahboz2003", password: "070603SU"))
        usersServer.append(User(fullName: "G'aybulla", email: "gaybulla@gmail.com", phone: "+998939099776", userName: "G'aybulla2002", password: "030202GS"))
        usersServer.append(User(fullName: "Shahzod", email: "shahzod@gmail.com", phone: "+998912342321", userName: "shahzod2002", password: "040202SJ"))
        usersServer.append(User(fullName: "Sohib", email: "mr.nut.sohib@gmail.com", phone: "934569965", userName:"sohibnutcrazy", password: "12345678"))
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
        
        nmErrorLabel.leftAnchor.constraint(equalTo: nmviewBig.leftAnchor,constant: 20).isActive = true
        nmErrorLabel.rightAnchor.constraint(equalTo: nmviewBig.rightAnchor, constant: -20).isActive = true
        nmErrorLabel.bottomAnchor.constraint(equalTo: nmviewBig.bottomAnchor, constant: -20).isActive = true
        nmErrorLabel.heightAnchor.constraint(equalTo: nmviewBig.heightAnchor, multiplier: 0.04).isActive = true
        
        
    }
    
    //MARK: objc Methods
    
    @objc func tappedSignUp() {
        nmErrorLabel.isHidden = true
        nmLoginTextfield.text = ""
        nmPasswordTextfield.text = ""
        present(SignUpViewController(), animated: true)
    }
    
    @objc func homePageGo() {
        var bool = false
        
        if nmLoginTextfield.text != "" && nmPasswordTextfield.text != "" {
            for useer in usersServer {
                if useer.userName == nmLoginTextfield.text && useer.password == nmPasswordTextfield.text {
                    bool = true
                    break
                }
            }
            
            if bool {
                sceneDelegate().callHomePage()
                nmErrorLabel.isHidden = true
            }else {
                nmErrorLabel.isHidden = false
            }
            
            
        }
    }
    
    
}





//MARK: extensions
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
    
    
    func extenappDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    func extensceneDelegate() -> SceneDelegate {
    
        return UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
    }
}




