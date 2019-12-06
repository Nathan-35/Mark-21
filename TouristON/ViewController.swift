//
//  ViewController.swift
//  TouristON
//
//  Created by Nathan on 01.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    private var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    private var logo = UIImageView(image: UIImage(named: "hot-air-balloon-2"))
    private var touristONLabel = UILabel()
    private var image = UIImage(named: "back-mark24")
    private var emailIcon = UIImage(named: "email")
    private var passwordIcon = UIImage(named: "key")
    private var imageView = UIImageView()
    private var emailTextField = UITextField()
    private var passwordTextField = UITextField()
    private var forgotPasswordButton = UIButton()
    private var signInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        createBackGround()
        createTouristONLabel()
        createEmailTextField()
        createPasswordTextField()
        createSignInButton()
        
    }
    
    private func createBackGround() {
        imageView = UIImageView(frame: view.bounds)
        imageView.image = image
        imageView.center = view.center
        view.addSubview(imageView)
    }
    
    private func createTouristONLabel() {
//        touristONLabel.frame = CGRect(x: 87.5, y: 120, width: 200, height: 50)
//        touristONLabel.text = "Logo"
//        touristONLabel.textAlignment = .center
//        //touristONLabel.backgroundColor = .blue
//        touristONLabel.font = UIFont(name: "AppleMyungjo", size: 38)
//        //touristONLabel.font = UIFont.boldSystemFont(ofSize: 35)
//        touristONLabel.textColor = .black
//        view.addSubview(touristONLabel)
        logo.frame = CGRect(x: view.center.x - 35, y: view.frame.minY + 100, width: 70, height: 75)
        logo.alpha = 0.7
        //logo.backgroundColor = .black
        //logo.sizeToFit()
        view.addSubview(logo)
    }
    
    private func createEmailTextField() {
        emailTextField.frame = CGRect(x: view.frame.minX + 15, y: 350, width: view.frame.maxX - 30, height: 50)
        emailTextField.placeholder = "Email"
        emailTextField.backgroundColor = .yellow
        emailTextField.keyboardAppearance = .dark
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no
        emailTextField.clearButtonMode = .whileEditing
        emailTextField.returnKeyType = .next
        emailTextField.alpha = 0.7
        let iconView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
        iconView.image = emailIcon
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        emailTextField.leftView = iconContainerView
        emailTextField.leftViewMode = .always
        emailTextField.delegate = self
        view.addSubview(emailTextField)
    }
    
    private func createPasswordTextField() {
        passwordTextField.frame = CGRect(x: view.frame.minX + 15, y: 420, width: view.frame.maxX - 30, height: 50)
        passwordTextField.placeholder = "Password"
        passwordTextField.backgroundColor = .yellow
        passwordTextField.keyboardAppearance = .dark
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocorrectionType = .no
        passwordTextField.returnKeyType = .done
        passwordTextField.alpha = 0.7
        let iconView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
        iconView.image = passwordIcon
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        passwordTextField.leftView = iconContainerView
        passwordTextField.leftViewMode = .always
        passwordTextField.delegate = self
        view.addSubview(passwordTextField)
    }
    
    private func createForgotButton() {
        forgotPasswordButton.frame = CGRect(x: 400, y: 450, width: 0, height: 0)
        forgotPasswordButton.setTitle("Forgot Password", for: .normal)
        forgotPasswordButton.sizeToFit()
        view.addSubview(forgotPasswordButton)
    }
    
    private func createSignInButton() {
        signInButton.frame = CGRect(x: 0, y: view.frame.maxY - 70, width: view.frame.size.width, height: 70)
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.backgroundColor = mainColor
        signInButton.addTarget(self, action: #selector(push), for: .touchUpInside)
        view.addSubview(signInButton)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            passwordTextField.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }

    @objc func push() {
        let mainVC = MainVC()
        navigationController?.pushViewController(mainVC, animated: true)
    }
    
}

