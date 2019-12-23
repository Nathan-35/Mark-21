//
//  TouristHomeVC.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 04.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class TouristHomeVC: UIViewController{
    
    private var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    var headImageView = UIImageView()
    var headImage = UIImage(named: "mainHead")
    var button = UIButton()
    var searchView = UIView()
    var searchLabel = UILabel()
    var searchBar = UITextField()
    var headLabel = UILabel()
    var subLabel = UILabel()
    var searchLine = UIView()
    var searchImage = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createHeadImage()
        createAccountButton()
        createHeadLabel()
        createSubLabel()
        createSearch()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.isHidden = true
    }
    
    func createSearch(){
        createSearchView()
        createSearchImage()
        createLine()
        createSearchLabel()
        createSearchBar()
    }
    
    
    func createHeadImage(){
        headImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 260))
        headImageView.image = headImage
        view.addSubview(headImageView)
    }
    
    func createHeadLabel(){
        headLabel.frame = CGRect(x: view.bounds.minX + 20, y: 140, width: 140, height: 40)
        //headLabel.backgroundColor = .red
        headLabel.textColor = .white
        headLabel.text = "TouristOn"
        headLabel.font = UIFont(name: "Georgia", size: 28)
        view.addSubview(headLabel)
    }
    
    func createSubLabel(){
        subLabel.frame = CGRect(x: view.bounds.minX + 22, y: 185, width: 200, height: 15)
        //subLabel.backgroundColor = .blue
        subLabel.textColor = .white
        subLabel.text = "App collect all your services"
        subLabel.font = UIFont(name: "Georgia", size: 15)
        view.addSubview(subLabel)
    }
    
    func createSearchView(){
        searchView.frame = CGRect(x: view.bounds.minX + 20, y: view.bounds.minY + 230, width: view.frame.maxX - 40, height: 60)
        searchView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        searchView.layer.borderColor = mainColor.cgColor
        searchView.layer.borderWidth = 1
        searchView.layer.cornerRadius = 13
        
        view.addSubview(searchView)
    }
    
    func createSearchImage(){
        searchImage.frame = CGRect(x: searchView.frame.minX + 17, y: searchView.frame.minY + 14, width: 32, height: 32)
        searchImage.image = UIImage(named: "search")
        view.addSubview(searchImage)
    }
    
    func createLine(){
        searchLine.frame = CGRect(x: searchView.frame.minX + 65, y: searchView.frame.minY + 7, width: 0.7, height: searchView.bounds.maxY - 12)
        searchLine.backgroundColor = mainColor
        view.addSubview(searchLine)
    }
    
    func createSearchLabel(){
        searchLabel.frame = CGRect(x: Int(searchView.frame.minX + 80), y: Int(searchView.frame.minY + 12), width: 200, height: 15)
        searchLabel.textColor = mainColor
        searchLabel.text = "Search your destination"
        searchLabel.font = UIFont(name: "Helvetica", size: 14)
        view.addSubview(searchLabel)
    }
    
    func createSearchBar(){
        searchBar.frame = CGRect(x: Int(searchView.frame.minX + 80), y: Int(searchView.frame.minY + 34), width: 255, height: 18)
//        searchBar.backgroundColor = .red
        searchBar.placeholder = "country or city..."
        searchBar.font = UIFont(name: "Helvetica", size: 15)
        searchBar.clearButtonMode = .whileEditing
        searchBar.tintColor = mainColor
        view.addSubview(searchBar)
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        searchBar.resignFirstResponder()
    }
}
