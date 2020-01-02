//
//  CreateAccount.swift
//  TouristON
//
//  Created by Nathan on 24.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class CreateAccount: UIViewController, UITextFieldDelegate {

    private var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    private var emailIcon = UIImage(named: "emailIcon")
    private var emailTextField = UITextField()
    private var emailView = UIView()
    private var emailLabel = UILabel()
    private var emailImage = UIImageView()
    private var emailLine = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.isHidden = false
        createEmailView()
        createEmailLabel()
        createEmailImage()
        createEmailLine()
        createEmailTextField()
        
    }
    
    private func createEmailView() {
            emailView.frame = CGRect(x: 20, y: 325, width: 330, height: 70)
            emailView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            emailView.layer.cornerRadius = 10
            emailView.alpha = 0.65
            view.addSubview(emailView)
        }
        
        private func createEmailLabel() {
            emailLabel.frame = CGRect(x: 100, y: 335, width: 0, height: 0)
            emailLabel.text = "E-mail"
            emailLabel.textColor = mainColor
            emailLabel.font = UIFont(name: "Georgia", size: 18)
            emailLabel.sizeToFit()
            view.addSubview(emailLabel)
        }
        
        private func createEmailImage() {
            emailImage.frame = CGRect(x: 38, y: 345, width: 30, height: 30)
            emailImage.image = emailIcon
            view.addSubview(emailImage)
        }
        
        private func createEmailLine() {
            emailLine.frame = CGRect(x: 85, y: 337, width: 0.7, height: 45)
            emailLine.backgroundColor = .lightGray
            view.addSubview(emailLine)
        }
        
        private func createEmailTextField() {
            emailTextField.frame = CGRect(x: 20, y: 342, width: 330, height: 60)
            //emailTextField.frame = CGRect(x: 100, y: 357, width: 240, height: 30)
    //        emailTextField.textRect(forBounds: CGRect(x: 100, y: 400, width: 240, height: 30))
    //        emailTextField.editingRect(forBounds: CGRect(x: 100, y: 400, width: 240, height: 30))
            emailTextField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 0))
            emailTextField.leftViewMode = .always
            emailTextField.keyboardAppearance = .dark
            emailTextField.keyboardType = .emailAddress
            emailTextField.autocapitalizationType = .none
            emailTextField.autocorrectionType = .no
            emailTextField.clearButtonMode = .whileEditing
            emailTextField.returnKeyType = .next
            emailTextField.textColor = .white
            emailTextField.tintColor = mainColor
            emailTextField.delegate = self
            view.addSubview(emailTextField)
        }


}
