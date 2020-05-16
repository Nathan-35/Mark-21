//
//  CountriesCollectionCell.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 21.01.2020.
//  Copyright © 2020 Nathan. All rights reserved.
//

import UIKit

class CountriesCollectionCell: UICollectionViewCell {

    
    @IBOutlet var countryLabel: UILabel!
//    @IBOutlet var imageView: UIImageView!
    @IBOutlet var countryRating: UILabel!
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
//    
    func configCountryLabel(){
        countryLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func configCountryRating(){
        countryRating.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        countryRating.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        countryRating.layer.cornerRadius = 20
    }

}
