//
//  OffersViewController.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 04.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class OffersViewController: UIViewController {
    
    var button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAccountButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func createAccountButton(){
        button.frame = CGRect(x: self.view.bounds.maxX - 80, y: view.bounds.minY + 50, width: 48, height: 48)
        button.adjustsImageWhenHighlighted = false
        button.setImage(UIImage(named: "account"), for: .normal)
        button.addTarget(self, action: #selector(go), for: .touchUpInside)
        view.addSubview(button)
    }
    @objc func go(){
        let testVC = TestViewController()
        navigationController?.pushViewController(testVC, animated: true)
    }
    
}
