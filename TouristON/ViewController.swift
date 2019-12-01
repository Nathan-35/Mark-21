//
//  ViewController.swift
//  TouristON
//
//  Created by Nathan on 01.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    var touristONLabel = UILabel()
    var image = UIImage(named: "back-mark24")
    var imageView = UIImageView()
    var signInButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createBackGround()
        createTouristONLabel()
        createSignInButton()
        
    }
    
    func createBackGround() {
        imageView = UIImageView(frame: view.bounds)
        imageView.image = image
        imageView.center = view.center
        view.addSubview(imageView)
    }
    
    func createTouristONLabel() {
        touristONLabel.frame = CGRect(x: 100, y: 120, width: 200, height: 50)
        touristONLabel.text = "TouristON"
        touristONLabel.textAlignment = .center
        //touristONLabel.backgroundColor = .blue
        touristONLabel.font = UIFont(name: "AppleMyungjo", size: 38)
        //touristONLabel.font = UIFont.boldSystemFont(ofSize: 35)
        touristONLabel.textColor = .black
        view.addSubview(touristONLabel)
    }
    
    func createSignInButton() {
        signInButton.frame = CGRect(x: 0, y: 742, width: 375, height: 70)
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.backgroundColor = mainColor
        signInButton.addTarget(self, action: #selector(push), for: .touchUpInside)
        view.addSubview(signInButton)
    }


    @objc func push() {
        let secondVC = SecondViewController()
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

