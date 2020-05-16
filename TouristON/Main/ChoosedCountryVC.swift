//
//  ChoosedCountryVC.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 14.05.2020.
//  Copyright © 2020 Nathan. All rights reserved.
//

import UIKit

class ChoosedCountryVC: UIViewController {

    var choosedCountry : String = ""
    var headImageView = UIImageView()
    var backItemMenu = UIButton()
    var countryLabel = UILabel()
    var countryDescription = UITextView()
    var buyButton = UIButton()
    var priceLabel = UILabel()
    var countryState : String = ""
    var countriesDescription : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createHeadImage()
        createBackItem()
        validateCountry(country: choosedCountry)
        createCountryLabel()
        createCountryDescription()
        createBuyTicketButton()
        createPriceLabel()
    }
    
    
    func createHeadImage(){
        headImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 375))
        headImageView.image = UIImage(named: choosedCountry)
        view.addSubview(headImageView)
    }
    
    func createBackItem(){
        backItemMenu.frame = CGRect(x: 10, y: 50, width: 64, height: 64)
        backItemMenu.setImage(UIImage(named: "arrow"), for: .normal)
        backItemMenu.addTarget(self, action: #selector(popBack), for: .touchUpInside)
        view.addSubview(backItemMenu)
    }
    
    func createCountryLabel(){
        countryLabel.frame = CGRect(x: 18, y: 380, width: 300, height: 50)
        countryLabel.text = countryState
        countryLabel.font = UIFont(name: "Georgia", size: 30)
        
        view.addSubview(countryLabel)
    }
    
    func validateCountry(country: String){
        switch country {
        case "USA":
            countryState = country + ", New York"
            countriesDescription = "Going to New York, do not rely on intelligence on the spot, why he calls the \"Big Apple\" - even New Yorkers themselves can not answer this question. As always happens in such cases, the multitude is one more absurd than the other."
        case "Emirates":
            countryState = country + ", Dubai"
            countriesDescription = "Dubai is incredible! This largest city in the UAE does not cease to change and surprise. Even those who visited the emirate only 7–10 years ago no longer have the full right to say “I saw Dubai,” because Dubai prepares new surprises for its residents and guests every day."
        case "France":
            countryState = country + ", Paris"
            countriesDescription = "Describing Paris by and large is meaningless. Not because there is nothing to write about - God forbid! It's just that this city, like no other city in the world, wants to fit into the framework and conform to stereotypes."
        case "Germany":
            countryState = country + ", Berlin"
            countriesDescription = "Listing all the sights and attractions of Berlin is very difficult. This is one of the most fun, lively and comfortable cities in Europe. Young people drag themselves away from local clubs, where the most fashionable parties are held, new styles, movements, subcultures are emerging."
        case "Italy":
            countryState = country + ", Rome"
            countriesDescription = "The eternal city where all roads lead, where you can live your whole life in one day long vacation or get lost for several weeks. The concentration of attractions in Rome reaches such values that in just a couple of hours in this city, the heart and brain of a poor tourist begin to refuse to accommodate new ones."
        case "Japan":
            countryState = country + ", Tokyo"
            countriesDescription = "Tokyo (Tokyo) - a giant ultramodern metropolis, which in a good way you need to live a few months to see at least half of its attractions. This city is the core of the second most populated urbanization in the world, the Tokyo metropolis, which has over 37 million people."
        case "Portugal":
            countryState = country + ", Lisbon"
            countriesDescription = "Lisbon is the most western capital of Europe. The European continent breaks off at Cape Roca near the city, and then beyond it stretches only the boundless Atlantic Ocean. There are not many historical sights in Lisbon - in 1755."
        case "Russia":
            countryState = country + ", Moscow"
            countriesDescription = "Moscow is capital of Russia; other epithets in comparison with this fade. No matter how trite it sounds, Moscow is a city of contrasts. This is the “third Rome”, and the “big village”, and “non-rubber”, a place for the elect and for all."
        case "Spain":
            countryState = country + ", Madrid"
            countriesDescription = "Madrid, one of the most beautiful cities in the world, the capital, which has a tremendous cultural and artistic heritage. It blends modern business centers and medieval architecture so organically."
        case "Tailand":
            countryState = country + ", Baku"
            countriesDescription = "In the last century it was called eastern Paris, today with the sight of Baku skyscrapers Dubai more and more often comes to mind - the source of wealth in the first and in the second was and still is oil."
        case "UK":
            countryState = country + ", London"
            countriesDescription = "The capital of Great Britain, a landmark city and a bastion of English traditions, London is the most popular destination of the British “excursion”. And this despite the tangible high cost of the direction and the obvious modesty of most hotels."
        case "Canada":
            countryState = country + ", Banf"
            countriesDescription = "Banff National Park - The first park in Canada, which was created in 1885. Located in Alberta, about 110 kilometers from Calgary, it is also considered the largest national park in Canada and one of the largest in the world."
        default:
            countryState = country + ", State"
        }
    }
    
    func createCountryDescription(){
        countryDescription.frame = CGRect(x: 15, y: 423, width: Int(view.bounds.maxX - 30), height: 250)
        countryDescription.font = UIFont(name: "Georgia", size: 18)
        countryDescription.textColor = .lightGray
        countryDescription.textAlignment = .justified
        countryDescription.text = countriesDescription
        view.addSubview(countryDescription)
    }
    
    func createBuyTicketButton(){
        buyButton.frame = CGRect(x: 87.5, y: 650, width: 200, height: 50)
        buyButton.setTitle("Buy ticket", for: .normal)
        buyButton.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        buyButton.layer.cornerRadius = 10
        view.addSubview(buyButton)
    }
    
    func createPriceLabel(){
        priceLabel.frame = CGRect(x: 162, y: 700, width: 100, height: 40)
        priceLabel.text = "1000$"
        priceLabel.font = UIFont(name: "Tahoma", size: 22)
        priceLabel.textColor = .lightGray
        view.addSubview(priceLabel)
    }
    
    @objc func popBack(){
        navigationController?.pushViewController(TouristHomeVC(), animated: false)
    }
    
    

}
