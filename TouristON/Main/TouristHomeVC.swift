//
//  TouristHomeVC.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 04.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class TouristHomeVC: UIViewController {

    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func createButton(){
        button.frame = CGRect(x: 0, y: 0, width: 100, height: 25)
        button.center = view.center
        button.setTitle("Tap", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(go), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func go(){
        let testVC = TestViewController()
        navigationController?.pushViewController(testVC, animated: true)
    }

}
