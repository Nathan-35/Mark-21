//
//  RegistrationVC.swift
//  TouristON
//
//  Created by Nathan on 02.01.2020.
//  Copyright © 2020 Nathan. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegistrationVC: UIViewController, UITextFieldDelegate {
    
    private var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    private var image = UIImage(named: "back-mark24")
    private var nickTextField = CustomTextField()
    private var nickView = AnimatedView()
    private var nickLabel = UILabel()
    private var nickImage = UIImageView()
    private var nickLine = UIView()
    private var nickIcon = UIImage(named: "nickIcon")
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
    private var backButton = UIButton()
    //private var confirmLabel = UILabel()
    private var outletLabel = UILabel()
    private var signUpButton = UIButton()
    private var headLabel = UILabel()
    private var subLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createBackground()
        createHeadLabel()
        createSubLabel()
        createEmail()
        createPassword()
        createNick()
        createBackButton()
        //createConfirmLabel()
        //createFirstOutletLabel()
        createSignUpButton()
    
        UIView.animate(withDuration: 1.3, delay: 0.6, options: .allowAnimatedContent, animations: {
            self.nickView.frame = CGRect(x: 20, y: 245, width: 330, height: 70)
            self.nickTextField.frame = CGRect(x: 20, y: 245, width: 330, height: 70)
            self.nickLabel.alpha = 1
            self.nickLine.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1.3, delay: 0.8, options: .allowAnimatedContent, animations: {
            self.emailView.frame = CGRect(x: 20, y: 330, width: 330, height: 70)
            self.emailTextField.frame = CGRect(x: 20, y: 330, width: 330, height: 70)
            self.emailLabel.alpha = 1
            self.emailLine.alpha = 1
        }, completion: nil)
        
        UIView.animate(withDuration: 1.3, delay: 1.0, options: .allowAnimatedContent, animations: {
            self.passwordView.frame = CGRect(x: 20, y: 415, width: 330, height: 70)
            self.passwordTextField.frame = CGRect(x: 20, y: 415, width: 330, height: 70)
            self.passwordLabel.alpha = 1
            self.passwordLine.alpha = 1
        }, completion: nil)
        
    }
    
    private func createBackground() {
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
    
    private func createNick() {
        createNickView()
        createNickLabel()
        createNickImage()
        createNickLine()
        createNickTextField()
    }
    
    private func createSignUpButton() {
        signUpButton.frame = CGRect(x: 87.5, y: 510, width: 200, height: 40)
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.layer.cornerRadius = signUpButton.bounds.height / 2
        signUpButton.addTarget(self, action: #selector(signUp), for: .touchUpInside)
        view.addSubview(signUpButton)
    }
    
    private func createFirstOutletLabel() {
        outletLabel.frame = CGRect(x: 0, y: 100, width: 375, height: 30)
        outletLabel.font = UIFont(name: "Helvetica", size: 14)
        outletLabel.text = ""
        outletLabel.textColor = .red
        outletLabel.isHidden = true
        outletLabel.textAlignment = .center
        view.addSubview(outletLabel)
    }
    
    private func createNickView() {
        nickView.frame = CGRect(x: 20, y: 245, width: 70, height: 70) //330
        nickView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        nickView.layer.cornerRadius = 10
        nickView.alpha = 0.65
        view.addSubview(nickView)
    }
    
    private func createNickLabel() {
        nickLabel.frame = CGRect(x: 100, y: 255, width: 250, height: 20)
        nickLabel.text = "Name"
        nickLabel.textColor = mainColor
        nickLabel.alpha = 0
        nickLabel.font = UIFont(name: "Georgia", size: 16)
        view.addSubview(nickLabel)
    }
    
    private func createNickImage() {
        nickImage.frame = CGRect(x: 39, y: 265, width: 30, height: 30)
        nickImage.image = nickIcon
        view.addSubview(nickImage)
    }
    
    private func createNickLine() {
        nickLine.frame = CGRect(x: 85, y: 258, width: 0.7, height: 45)
        nickLine.backgroundColor = .lightGray
        nickLine.alpha = 0
        view.addSubview(nickLine)
    }
    
    private func createNickTextField() {
        nickTextField.frame = CGRect(x: 20, y: 245, width: 70, height: 70)
        nickTextField.keyboardAppearance = .dark
        nickTextField.autocapitalizationType = .none
        nickTextField.autocorrectionType = .no
        nickTextField.clearButtonMode = .whileEditing
        nickTextField.returnKeyType = .next
        nickTextField.textColor = .white
        nickTextField.tintColor = mainColor
        nickTextField.addTarget(self, action: #selector(tap), for: .touchDown)
        nickTextField.delegate = self
        view.addSubview(nickTextField)
    }
    
    private func createEmailView() {
        emailView.frame = CGRect(x: 20, y: 330, width: 70, height: 70)
        emailView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        emailView.layer.cornerRadius = 10
        emailView.alpha = 0.65
        view.addSubview(emailView)
    }
    
    private func createEmailLabel() {
        emailLabel.frame = CGRect(x: 100, y: 340, width: 0, height: 0)
        emailLabel.text = "E-mail"
        emailLabel.textColor = mainColor
        emailLabel.alpha = 0
        emailLabel.font = UIFont(name: "Georgia", size: 16)
        emailLabel.sizeToFit()
        view.addSubview(emailLabel)
    }
    
    private func createEmailImage() {
        emailImage.frame = CGRect(x: 38, y: 350, width: 30, height: 30)
        emailImage.image = emailIcon
        view.addSubview(emailImage)
    }
    
    private func createEmailLine() {
        emailLine.frame = CGRect(x: 85, y: 342, width: 0.7, height: 45)
        emailLine.backgroundColor = .lightGray
        emailLine.alpha = 0
        view.addSubview(emailLine)
    }
    
    private func createEmailTextField() {
        emailTextField.frame = CGRect(x: 20, y: 330, width: 70, height: 70)
        emailTextField.keyboardAppearance = .dark
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocapitalizationType = .none
        emailTextField.autocorrectionType = .no
        emailTextField.clearButtonMode = .whileEditing
        emailTextField.returnKeyType = .next
        emailTextField.textColor = .white
        emailTextField.tintColor = mainColor
        emailTextField.addTarget(self, action: #selector(tap2), for: .touchDown)
        emailTextField.delegate = self
        view.addSubview(emailTextField)
    }
    
    private func createPasswordView() {
        passwordView.frame = CGRect(x: 20, y: 415, width: 70, height: 70)
        passwordView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        passwordView.layer.cornerRadius = 10
        passwordView.alpha = 0.65
        view.addSubview(passwordView)
    }
    
    private func createPasswordLabel() {
        passwordLabel.frame = CGRect(x: 100, y: 425, width: 250, height: 20)
        passwordLabel.text = "Password"
        passwordLabel.textColor = mainColor
        passwordLabel.alpha = 0
        passwordLabel.font = UIFont(name: "Georgia", size: 16)
        view.addSubview(passwordLabel)
    }
    
    private func createPasswordImage() {
        passwordImage.frame = CGRect(x: 40, y: 432, width: 30, height: 30)
        passwordImage.image = passwordIcon
        view.addSubview(passwordImage)
    }
    
    private func createPasswordLine() {
        passwordLine.frame = CGRect(x: 85, y: 431, width: 0.7, height: 45)
        passwordLine.backgroundColor = .lightGray
        passwordLine.alpha = 0
        view.addSubview(passwordLine)
    }
    
    private func createPasswordTextField() {
        passwordTextField.frame = CGRect(x: 20, y: 435, width: 70, height: 70)
        passwordTextField.keyboardAppearance = .dark
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.clearButtonMode = .whileEditing
        passwordTextField.returnKeyType = .done
        passwordTextField.textColor = .white
        passwordTextField.tintColor = mainColor
        passwordTextField.addTarget(self, action: #selector(tap3), for: .touchDown)
        passwordTextField.delegate = self
        view.addSubview(passwordTextField)
    }
    
//    private func createConfirmLabel() {
//        //confirmLabel.frame = CGRect(x: passwordLabel2.bounds.maxX + 30, y: view.center.y + 120, width: 200, height: 25)
//        confirmLabel.frame = CGRect(x: 30, y: 510, width: 0, height: 0)
//        confirmLabel.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
//        confirmLabel.text = "Passwords aren't same"
//        confirmLabel.font = UIFont(name: "Helvetica", size: 16.5)
//        confirmLabel.isHidden = true
//        confirmLabel.sizeToFit()
//        view.addSubview(confirmLabel)
//    }
    
    private func checkValid() -> String? {
        if emailTextField.text == "" || passwordTextField.text == "" || nickTextField.text == "" || emailTextField.text == nil || passwordTextField.text == nil || nickTextField.text == nil {
            return "Please fill in all fields"
        }
        return nil
    }
    
    //    func textFieldDidEndEditing(_ textField: UITextField) {
    //        if (passwordTextField.text != passwordTextField2.text){
    //            confirmLabel.isHidden = false
    //        } else {
    //            confirmLabel.isHidden = true
    //        }
    //    }
    
//    @objc func textFieldisFull() {
//        if (emailTextField.text!.isEmpty || passwordTextField.text!.isEmpty || nickTextField.text!.isEmpty){
//
//            confirmLabel.isHidden = true
//        } else {
//
//            passwordLabel.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//        }
//    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case nickTextField:
            emailView.pulsate()
            emailTextField.becomeFirstResponder()
        case emailTextField:
            passwordView.pulsate()
            passwordTextField.becomeFirstResponder()
        default:
            textField.resignFirstResponder()
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nickTextField.resignFirstResponder()
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    @objc func tap() {
        nickView.pulsate()
//        UIView.animate(withDuration: 1.5) {
//            self.nickView.frame = CGRect(x: 20, y: 180, width: 330, height: 70)
//            self.nickTextField.frame = CGRect(x: 20, y: 180, width: 330, height: 70)
//            self.nickLabel.alpha = 1
//            self.nickLine.alpha = 1
//        }
    }
  
    @objc func tap2() {
        emailView.pulsate()
    }
    
    @objc func tap3() {
        passwordView.pulsate()
    }
    
    @objc func backAuth() {
        navigationController?.popViewController(animated: true)
    }
    
    //    @objc func testPassword() {
    //        if passwordTextField.text! == passwordTextField2.text! {
    //            signUp()
    //        }
    //    }
    
    @objc func signUp() {
        if checkValid() != nil {
            outletLabel.isHidden = false
            outletLabel.text = checkValid()
        } else {
            Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (result, error) in
                if error != nil {
                    self.outletLabel.text = "\(error?.localizedDescription ?? "")"
                } else {
                    let dataBase = Firestore.firestore()
                    dataBase.collection("users").addDocument(data: [
                        "name": self.nickTextField.text!,
                        "email": self.emailTextField.text!,
                        "uid": result!.user.uid
                    ]) { (error) in
                        if error != nil {
                            fatalError("Error is saving user in database")
                        }
                    }
                    
                    print("Jump to the next screen")
                    
                }
            }
        }
    }
    
}
