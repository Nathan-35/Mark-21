//
//  RegistrationVC.swift
//  TouristON
//
//  Created by Nathan on 02.01.2020.
//  Copyright © 2020 Nathan. All rights reserved.
//

import UIKit

class RegistrationVC: UIViewController, UITextFieldDelegate {

    private var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    private var image = UIImage(named: "back-mark24")
    private var emailIcon = UIImage(named: "emailIcon")
    private var passwordIcon = UIImage(named: "lockIcon")
    private var imageView = UIImageView()
    private var emailTextField = CustomTextField()
    private var passwordTextField = CustomTextField()
    private var emailView = AnimatedView()
    private var passwordView = AnimatedView()
    private var emailLabel = UILabel()
    private var passwordLabel = UILabel()
    private var emailImage = UIImageView()
    private var passwordImage = UIImageView()
    private var emailLine = UIView()
    private var passwordLine = UIView()
    private var passwordTextField2 = CustomTextField()
    private var passwordView2 = AnimatedView()
    private var passwordLabel2 = UILabel()
    private var passwordImage2 = UIImageView()
    private var passwordLine2 = UIView()
    private var backButton = UIButton()
    private var confirmLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createBackground()
        createEmail()
        createPassword()
        createPassword2()
        createBackButton()
        createConfirmLabel()
        
    }
    
    private func createBackground() {
        imageView = UIImageView(frame: view.bounds)
        imageView.image = image
        imageView.center = view.center
        view.addSubview(imageView)
    }
    
    private func createBackButton() {
        backButton.frame = CGRect(x: 30, y: 60, width: 0, height: 0)
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        backButton.sizeToFit()
        backButton.addTarget(self, action: #selector(backAuth), for: .touchUpInside)
        view.addSubview(backButton)
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
    
    private func createPassword2() {
        createPasswordView2()
        createPasswordLabel2()
        createPasswordImage2()
        createPasswordLine2()
        createPasswordTextField2()
    }
    
    private func createEmailView() {
        emailView.frame = CGRect(x: 20, y: 270, width: 330, height: 70)
        emailView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        emailView.layer.cornerRadius = 10
        emailView.alpha = 0.65
        view.addSubview(emailView)
    }
    
    private func createEmailLabel() {
        emailLabel.frame = CGRect(x: 100, y: 280, width: 0, height: 0)
        emailLabel.text = "E-mail"
        emailLabel.textColor = mainColor
        emailLabel.font = UIFont(name: "Georgia", size: 16)
        emailLabel.sizeToFit()
        view.addSubview(emailLabel)
    }
    
    private func createEmailImage() {
        emailImage.frame = CGRect(x: 38, y: 290, width: 30, height: 30)
        emailImage.image = emailIcon
        view.addSubview(emailImage)
    }
    
    private func createEmailLine() {
        emailLine.frame = CGRect(x: 85, y: 282, width: 0.7, height: 45)
        emailLine.backgroundColor = .lightGray
        view.addSubview(emailLine)
    }
    
    private func createEmailTextField() {
        emailTextField.frame = CGRect(x: 20, y: 270, width: 330, height: 70)
        emailTextField.keyboardAppearance = .dark
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no
        emailTextField.clearButtonMode = .whileEditing
        emailTextField.returnKeyType = .next
        emailTextField.textColor = .white
        emailTextField.tintColor = mainColor
        emailTextField.addTarget(self, action: #selector(tap), for: .touchDown)
        emailTextField.delegate = self
        view.addSubview(emailTextField)
    }
    
    private func createPasswordView() {
        passwordView.frame = CGRect(x: 20, y: 355, width: 330, height: 70)
        passwordView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passwordView.layer.cornerRadius = 10
        passwordView.alpha = 0.65
        view.addSubview(passwordView)
    }
    
    private func createPasswordLabel() {
        passwordLabel.frame = CGRect(x: 100, y: 365, width: 250, height: 20)
        passwordLabel.text = "Password"
        passwordLabel.textColor = mainColor
        passwordLabel.font = UIFont(name: "Georgia", size: 16)
        view.addSubview(passwordLabel)
    }
    
    private func createPasswordImage() {
        passwordImage.frame = CGRect(x: 41, y: 372, width: 30, height: 30)
        passwordImage.image = passwordIcon
        view.addSubview(passwordImage)
    }
    
    private func createPasswordLine() {
        passwordLine.frame = CGRect(x: 85, y: 371, width: 0.7, height: 45)
        passwordLine.backgroundColor = .lightGray
        view.addSubview(passwordLine)
    }
    
    private func createPasswordTextField() {
        passwordTextField.frame = CGRect(x: 20, y: 355, width: 330, height: 70)
        passwordTextField.keyboardAppearance = .dark
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.clearButtonMode = .whileEditing
        passwordTextField.returnKeyType = .next
        passwordTextField.textColor = .white
        passwordTextField.tintColor = mainColor
        passwordTextField.addTarget(self, action: #selector(tap2), for: .touchDown)
        passwordTextField.delegate = self
        view.addSubview(passwordTextField)
    }
    
    private func createPasswordView2() {
        passwordView2.frame = CGRect(x: 20, y: 440, width: 330, height: 70)
        passwordView2.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passwordView2.layer.cornerRadius = 10
        passwordView2.alpha = 0.65
        view.addSubview(passwordView2)
    }
    
    private func createPasswordLabel2() {
        passwordLabel2.frame = CGRect(x: 100, y: 450, width: 250, height: 20)
        passwordLabel2.text = "Password"
        passwordLabel2.textColor = mainColor
        passwordLabel2.font = UIFont(name: "Georgia", size: 16)
        view.addSubview(passwordLabel2)
    }
    
    private func createPasswordImage2() {
        passwordImage2.frame = CGRect(x: 41, y: 460, width: 30, height: 30)
        passwordImage2.image = passwordIcon
        view.addSubview(passwordImage2)
    }
    
    private func createPasswordLine2() {
        passwordLine2.frame = CGRect(x: 85, y: 453, width: 0.7, height: 45)
        passwordLine2.backgroundColor = .lightGray
        view.addSubview(passwordLine2)
    }
    
    private func createPasswordTextField2() {
        passwordTextField2.frame = CGRect(x: 20, y: 440, width: 330, height: 70)
        passwordTextField2.keyboardAppearance = .dark
        passwordTextField2.autocapitalizationType = .none
        passwordTextField2.autocorrectionType = .no
        passwordTextField2.clearButtonMode = .whileEditing
        passwordTextField2.returnKeyType = .done
        passwordTextField2.textColor = .white
        passwordTextField2.tintColor = mainColor
        passwordTextField2.addTarget(self, action: #selector(tap3), for: .touchDown)
        passwordTextField2.delegate = self
        view.addSubview(passwordTextField2)
    }
    
    private func createConfirmLabel() {
        //confirmLabel.frame = CGRect(x: passwordLabel2.bounds.maxX + 30, y: view.center.y + 120, width: 200, height: 25)
        confirmLabel.frame = CGRect(x: 30, y: 510, width: 0, height: 0)
        confirmLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        confirmLabel.text = "Passwords aren't same"
        confirmLabel.font = UIFont(name: "Helvetica", size: 16.5)
        confirmLabel.isHidden = true
        confirmLabel.sizeToFit()
        view.addSubview(confirmLabel)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        if (passwordTextField.text != passwordTextField2.text){
            confirmLabel.isHidden = false
        } else {
            confirmLabel.isHidden = true
        }
    }

    @objc func textFieldisFull(){
        if (emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty || passwordTextField2.text!.isEmpty || passwordTextField.text != passwordTextField2.text){
            
            confirmLabel.isHidden = true
        } else {
            
            passwordLabel.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
            passwordLabel2.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        }
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case emailTextField:
            passwordView.pulsate()
            passwordTextField.becomeFirstResponder()
        case passwordTextField:
            passwordView2.pulsate()
            passwordTextField2.becomeFirstResponder()
            
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        passwordTextField2.resignFirstResponder()
    }
    
    @objc func tap() {
        emailView.pulsate()
    }
    
    @objc func tap2() {
        passwordView.pulsate()
    }
    
    @objc func tap3() {
        passwordView2.pulsate()
    }
    
    @objc func backAuth() {
        navigationController?.popViewController(animated: true)
    }
    
}
