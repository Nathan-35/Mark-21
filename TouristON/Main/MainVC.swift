//
//  SecondViewController.swift
//  TouristON
//
//  Created by Nathan on 01.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class MainVC: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createController()
        
    }
    func createController() {
        let home = TouristHomeVC()
        home.tabBarItem = UITabBarItem(title: "Trips", image: UIImage(named: "home"), tag: 1)
        
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.9490196078, green: 0.737254902, blue: 0.2980392157, alpha: 1)
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        let offers = OffersViewController()
        offers.tabBarItem = UITabBarItem(title: "Offers", image: UIImage(named: "offers2"), tag: 2)
        
        let favourites = FavouritesViewController()
        favourites.tabBarItem = UITabBarItem(title: "Favourites", image: UIImage(named: "favourites"), tag: 3)
        
        self.viewControllers = [home, offers, favourites]
    }

    

}
