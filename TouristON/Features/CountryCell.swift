//
//  CollectionViewCell.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 16.05.2020.
//  Copyright © 2020 Nathan. All rights reserved.
//

import UIKit

class CountryCell : UICollectionViewCell{
    var countryLabel = UILabel()
    var backView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        self.layer.cornerRadius = 13
        self.layer.borderWidth = 1.5
        self.layer.borderColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        
        let layoutArr = [backView, countryLabel]
        
        for item in layoutArr{
            addSubview(item)
            item.translatesAutoresizingMaskIntoConstraints = false
        }
        
        backView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        backView.layer.cornerRadius = 10
        backView.layer.maskedCorners = [.layerMaxXMaxYCorner]
        backView.alpha = 0.8
        countryLabel.font = UIFont(name: "Georgia", size: 20)
        countryLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        NSLayoutConstraint.activate([
            countryLabel.heightAnchor.constraint(equalToConstant: 30),
            countryLabel.centerYAnchor.constraint(equalTo: backView.centerYAnchor),
            countryLabel.centerXAnchor.constraint(equalTo: backView.centerXAnchor),
            
            backView.widthAnchor.constraint(equalTo: countryLabel.widthAnchor, constant: 10),
            backView.heightAnchor.constraint(equalToConstant: 30),
            
        ])
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
