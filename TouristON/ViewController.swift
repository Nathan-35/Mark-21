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
    private var emailIcon = UIImage(named: "emailIcon")
    private var passwordIcon = UIImage(named: "lockIcon")
    private var imageView = UIImageView()
    private var emailTextField = UITextField()
    private var passwordTextField = UITextField()
    private var signInButton = UIButton()
    private var emailView = UIView()
    private var passwordView = UIView()
    private var emailLabel = UILabel()
    private var passwordLabel = UILabel()
    private var emailImage = UIImageView()
    private var passwordImage = UIImageView()
    private var emailLine = UIView()
    private var passwordLine = UIView()
    private var headLabel = UILabel()
    private var subLabel = UILabel()
    private var forgotPassButton = UIButton()
    private var footerLabel = UILabel()
    private var createAccountButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        createBackGround()
        //createTouristONLabel()
        //        createEmailTextField()
        //        createPasswordTextField()
        createHeadLabel()
        createSubLabel()
        createSignInButton()
        createEmail()
        createPassword()
        createForgotPassButton()
        createFooterLabel()
        createAcBut()
    }
    
    private func createBackGround() {
        imageView = UIImageView(frame: view.bounds)
        imageView.image = image
        imageView.center = view.center
        view.addSubview(imageView)
    }
    
    private func createHeadLabel(){
        headLabel.frame = CGRect(x: 0, y: 130, width: view.frame.size.width, height: 40)
        headLabel.textAlignment = .center
        headLabel.text = "ToursitOn"
        headLabel.font = UIFont(name: "Georgia", size: 33)
        view.addSubview(headLabel)
    }
    
    private func createSubLabel(){
        subLabel.frame = CGRect(x: 0, y: 175, width: view.frame.size.width, height: 20)
        subLabel.text = "comfortable travel"
        subLabel.textAlignment = .center
        subLabel.font = UIFont(name: "Georgia", size: 18)
        view.addSubview(subLabel)
    }
    
    private func createEmail() {
        createEmailView()
        createEmailLabel()
        createEmailImage()
        createEmailLine()
        createEmailTextField()
    }
    
    private func createPassword() {
        createPasswordView()
        createPasswordLabel()
        createPasswordImage()
        createPasswordLine()
        createPasswordTextField()
    }
    
//    private func createTouristONLabel() {
//                touristONLabel.frame = CGRect(x: 87.5, y: 120, width: 200, height: 50)
//                touristONLabel.text = "Logo"
//                touristONLabel.textAlignment = .center
//                touristONLabel.backgroundColor = .blue
//                touristONLabel.font = UIFont(name: "AppleMyungjo", size: 38)
//                touristONLabel.font = UIFont.boldSystemFont(ofSize: 35)
//                touristONLabel.textColor = .black
//                view.addSubview(touristONLabel)
//        logo.frame = CGRect(x: view.center.x - 35, y: view.frame.minY + 100, width: 70, height: 75)
//        logo.alpha = 0.7
//        logo.backgroundColor = .black
//        logo.sizeToFit()
//        view.addSubview(logo)
//    }
    
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
        emailLine.frame = CGRect(x: 85, y: 337, width: 1, height: 45)
        emailLine.backgroundColor = .lightGray
        view.addSubview(emailLine)
    }
    
    private func createEmailTextField() {
        emailTextField.frame = CGRect(x: 100, y: 327, width: 240, height: 30)
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
    
    private func createPasswordView() {
        passwordView.frame = CGRect(x: 20, y: 410, width: 330, height: 70)
        passwordView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passwordView.layer.cornerRadius = 10
        passwordView.alpha = 0.65
        view.addSubview(passwordView)
    }
    
    private func createPasswordLabel() {
        passwordLabel.frame = CGRect(x: 100, y: 420, width: 250, height: 20)
        passwordLabel.text = "Password"
        passwordLabel.textColor = mainColor
        passwordLabel.font = UIFont(name: "Georgia", size: 18)
        view.addSubview(passwordLabel)
    }
    
    private func createPasswordImage() {
        passwordImage.frame = CGRect(x: 41, y: 427, width: 30, height: 30)
        passwordImage.image = passwordIcon
        view.addSubview(passwordImage)
    }
    
    private func createPasswordLine() {
        passwordLine.frame = CGRect(x: 85, y: 426, width: 1, height: 45)
        passwordLine.backgroundColor = .lightGray
        view.addSubview(passwordLine)
    }
    
    private func createPasswordTextField() {
        passwordTextField.frame = CGRect(x: 100, y: 442, width: 240, height: 30)
        passwordTextField.keyboardAppearance = .dark
        passwordTextField.isSecureTextEntry = true
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.clearButtonMode = .whileEditing
        passwordTextField.returnKeyType = .done
        passwordTextField.textColor = .white
        passwordTextField.tintColor = mainColor
        //        emailTextField.backgroundColor = .orange
        passwordTextField.delegate = self
        view.addSubview(passwordTextField)
    }
    
    private func createForgotPassButton(){
        forgotPassButton.frame = CGRect(x: 214, y: 485, width: 150, height: 20)
        forgotPassButton.setTitle("Forgot Password", for: .normal)
        forgotPassButton.setTitleColor(.white, for: .normal)
        forgotPassButton.titleLabel?.font = UIFont(name: "Georgia", size: 15)
        forgotPassButton.addTarget(self, action: #selector(pushToForgotPassVC), for: .touchUpInside)
        view.addSubview(forgotPassButton)
    }
    
    @objc func pushToForgotPassVC(){
        print("Forgot")
    }
    
    private func createFooterLabel(){
        footerLabel.frame = CGRect(x: 0, y: 685, width: view.frame.size.width, height: 20)
        footerLabel.textAlignment = .center
        footerLabel.text = "Don't have an account?"
        footerLabel.font = UIFont(name: "Georgia", size: 14)
        footerLabel.textColor = .white
        view.addSubview(footerLabel)
    }
    
    private func createAcBut(){
        createAccountButton.frame = CGRect(x: 0, y: 705, width: view.frame.size.width, height: 20)
        createAccountButton.setTitle("create now", for: .normal)
        createAccountButton.setTitleColor(mainColor, for: .normal)
        createAccountButton.titleLabel?.font = UIFont(name: "Georgia", size: 15)
        createAccountButton.addTarget(self, action: #selector(pushToCreateAccountVC), for: .touchUpInside)
        view.addSubview(createAccountButton)
    }
    @objc func pushToCreateAccountVC(){
        print("Create")
    }
    //    private func createEmailTextField() {
    //        emailTextField.frame = CGRect(x: view.frame.minX + 15, y: 350, width: view.frame.maxX - 30, height: 50)
    //        emailTextField.placeholder = "Email"
    //        emailTextField.backgroundColor = .yellow
    //        emailTextField.keyboardAppearance = .dark
    //        emailTextField.keyboardType = .emailAddress
    //        emailTextField.autocapitalizationType = .none
    //        emailTextField.autocorrectionType = .no
    //        emailTextField.clearButtonMode = .whileEditing
    //        emailTextField.returnKeyType = .next
    //        emailTextField.alpha = 0.7
    //        let iconView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
    //        iconView.image = emailIcon
    //        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
    //        iconContainerView.addSubview(iconView)
    //        emailTextField.leftView = iconContainerView
    //        emailTextField.leftViewMode = .always
    //        emailTextField.delegate = self
    //        view.addSubview(emailTextField)
    //    }
    
    //    private func createPasswordTextField() {
    //        passwordTextField.frame = CGRect(x: view.frame.minX + 15, y: 420, width: view.frame.maxX - 30, height: 50)
    //        passwordTextField.placeholder = "Password"
    //        passwordTextField.backgroundColor = .yellow
    //        passwordTextField.keyboardAppearance = .dark
    //        passwordTextField.isSecureTextEntry = true
    //        passwordTextField.autocorrectionType = .no
    //        passwordTextField.returnKeyType = .done
    //        passwordTextField.alpha = 0.7
    //        let iconView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
    //        iconView.image = passwordIcon
    //        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 30, height: 30))
    //        iconContainerView.addSubview(iconView)
    //        passwordTextField.leftView = iconContainerView
    //        passwordTextField.leftViewMode = .always
    //        passwordTextField.delegate = self
    //        view.addSubview(passwordTextField)
    //    }
    
//    private func createForgotButton() {
//        forgotPasswordButton.frame = CGRect(x: 400, y: 450, width: 0, height: 0)
//        forgotPasswordButton.setTitle("Forgot Password", for: .normal)
//        forgotPasswordButton.sizeToFit()
//        view.addSubview(forgotPasswordButton)
//    }
    
    private func createSignInButton() {
        signInButton.frame = CGRect(x: 0, y: view.frame.maxY - 70, width: view.frame.size.width, height: 70)
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.backgroundColor = mainColor
        signInButton.titleLabel?.font = UIFont(name: "Georgia", size: 16)
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

