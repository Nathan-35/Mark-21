//
//  TestViewController.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 04.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    var imageView = UIButton()
    var editImageView = UIImageView()
    var usernameTitle = UILabel()
    var emailTitle = UILabel()
    var acceptButton = UIButton()
    var usernameTF = UITextField()
    var emailTF = UITextField()
    var editUsernameBN = UIButton()
    var editEmailBN = UIButton()
    var saveButton = UIButton()
    var padding : CGFloat = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureController()
        createImageView()
        createEditImageView()
        createUsernameTitle()
        createUsernameTF()
        createEditUsernameBN()
        createEmailTitle()
        createEmailTF()
        createEditEmailBN()
        createSaveButton()
    }
    
    
    
    
    func configureController(){
        navigationItem.title = "Account"
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = false
    }
    
    func createImageView(){
        view.addSubview(imageView)
        imageView.setImage(UIImage(named: "account"), for: .normal)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.addTarget(self, action: #selector(changeImage), for: .touchUpInside)
        imageView.adjustsImageWhenHighlighted = false
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
        ])
        
    }
    
    func createEditImageView(){
        view.addSubview(editImageView)
        
        editImageView.image = UIImage(named: "picture")
        editImageView.translatesAutoresizingMaskIntoConstraints = false
        editImageView.clipsToBounds = true
        editImageView.backgroundColor = .lightGray
        editImageView.alpha = 0.65
        
        
        NSLayoutConstraint.activate([
            editImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            editImageView.topAnchor.constraint(equalTo: imageView.topAnchor),
            editImageView.widthAnchor.constraint(equalTo: imageView.widthAnchor),
            editImageView.heightAnchor.constraint(equalTo: imageView.heightAnchor),
        ])
        
        editImageView.layer.cornerRadius = 50
    }
    
    
    func createUsernameTitle(){
        view.addSubview(usernameTitle)
        
        usernameTitle.text = "Username"
        usernameTitle.textColor = .label
        usernameTitle.translatesAutoresizingMaskIntoConstraints = false
        usernameTitle.font = UIFont(name: "Helvetica", size: 22)
        
        NSLayoutConstraint.activate([
            usernameTitle.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 70),
            usernameTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            usernameTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding)
        ])
    }
    
    func createUsernameTF(){
        view.addSubview(usernameTF)
        
        usernameTF.text = "Alex Smith"
        usernameTF.translatesAutoresizingMaskIntoConstraints = false
        usernameTF.isUserInteractionEnabled = false
        usernameTF.font = UIFont(name: "Helvetica", size: 20)
        
        
        NSLayoutConstraint.activate([
            usernameTF.topAnchor.constraint(equalTo: usernameTitle.bottomAnchor, constant: 15),
            usernameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
//            usernameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
        ])
    }
    
    func createEditUsernameBN(){
        view.addSubview(editUsernameBN)
        
        editUsernameBN.setImage(UIImage(named: "edit"), for: .normal)
        editUsernameBN.translatesAutoresizingMaskIntoConstraints = false
        editUsernameBN.addTarget(self, action: #selector(editUsername), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            editUsernameBN.centerYAnchor.constraint(equalTo: usernameTF.centerYAnchor),
            editUsernameBN.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            editUsernameBN.widthAnchor.constraint(equalToConstant: 20),
            editUsernameBN.heightAnchor.constraint(equalToConstant: 20),
        ])
        
        
    }
    
    func createEmailTitle(){
        view.addSubview(emailTitle)
        
        emailTitle.text = "Email"
        emailTitle.textColor = .label
        emailTitle.translatesAutoresizingMaskIntoConstraints = false
        emailTitle.font = UIFont(name: "Helvetica", size: 22)
        
        NSLayoutConstraint.activate([
            emailTitle.topAnchor.constraint(equalTo: usernameTitle.bottomAnchor, constant: 90),
            emailTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            emailTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
        ])
    }
    
    func createEmailTF(){
        view.addSubview(emailTF)
        
        emailTF.text = "alish22061999@gmail.com"
        emailTF.translatesAutoresizingMaskIntoConstraints = false
        emailTF.isUserInteractionEnabled = false
        emailTF.font = UIFont(name: "Helvetica", size: 20)
        
        NSLayoutConstraint.activate([
            emailTF.topAnchor.constraint(equalTo: emailTitle.bottomAnchor, constant: 15),
            emailTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
//            emailTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
        ])
    }
    
    func createEditEmailBN(){
        view.addSubview(editEmailBN)
        
        editEmailBN.setImage(UIImage(named: "edit"), for: .normal)
        editEmailBN.translatesAutoresizingMaskIntoConstraints = false
        editEmailBN.addTarget(self, action: #selector(editEmail), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            editEmailBN.centerYAnchor.constraint(equalTo: emailTF.centerYAnchor, constant: -3.5),
            editEmailBN.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            editEmailBN.widthAnchor.constraint(equalToConstant: 20),
            editEmailBN.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
    
    func createSaveButton(){
        view.addSubview(saveButton)
        
        saveButton.translatesAutoresizingMaskIntoConstraints = false
        saveButton.setTitle("Save changes", for: .normal)
        saveButton.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        saveButton.layer.cornerRadius = 10
        saveButton.addTarget(self, action: #selector(saveChanges), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            saveButton.topAnchor.constraint(equalTo: emailTF.bottomAnchor, constant: 80),
            saveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            saveButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            saveButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func changeImage(){
        print("Image changed")
    }
    
    @objc func editUsername(){
        usernameTF.isUserInteractionEnabled = true
        usernameTF.becomeFirstResponder()
    }
    
    @objc func editEmail(){
        emailTF.isUserInteractionEnabled = true
        emailTF.becomeFirstResponder()
    }
    
    @objc func saveChanges(){
        print("Changes saved")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        usernameTF.resignFirstResponder()
        emailTF.resignFirstResponder()
    }

}
