//
//  TouristHomeVC.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 04.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class TouristHomeVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    private var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    var headImageView = UIImageView()
    var headImage = UIImage(named: "mainHead")
    var button = UIButton()
    var searchView = UIView()
    var searchLabel = UILabel()
    var searchBar = CustomTextField()
    var headLabel = UILabel()
    var subLabel = UILabel()
    var searchLine = UIView()
    var searchImage = UIImageView()
    var countriesColView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    var cellId = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCountriesCollection()
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
        searchView.frame = CGRect(x: view.bounds.minX + 20, y: view.bounds.minY + 225, width: view.frame.maxX - 40, height: 70)
        searchView.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        searchView.layer.borderColor = mainColor.cgColor
        searchView.layer.borderWidth = 1
        searchView.layer.cornerRadius = 13
        
        view.addSubview(searchView)
    }
    
    func createSearchImage(){
        searchImage.frame = CGRect(x: searchView.frame.minX + 17, y: searchView.frame.minY + 19, width: 32, height: 32)
        searchImage.image = UIImage(named: "search")
        view.addSubview(searchImage)
    }
    
    func createLine(){
        searchLine.frame = CGRect(x: searchView.frame.minX + 65, y: searchView.frame.minY + 7, width: 0.7, height: searchView.bounds.maxY - 12)
        searchLine.backgroundColor = mainColor
        view.addSubview(searchLine)
    }
    
    func createSearchLabel(){
        searchLabel.frame = CGRect(x: Int(searchView.frame.minX + 80), y: Int(searchView.frame.minY + 14), width: 200, height: 15)
        searchLabel.textColor = mainColor
        searchLabel.text = "Search your destination"
        searchLabel.font = UIFont(name: "Helvetica", size: 14)
        view.addSubview(searchLabel)
    }
    
    func createSearchBar(){
        searchBar.frame = searchView.frame
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
        let accountVC = AccountViewController()
        navigationController?.pushViewController(accountVC, animated: true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        searchBar.resignFirstResponder()
    }
    
    func createCountriesCollection(){
        countriesColView.frame = CGRect(x: 0, y: 290, width: view.frame.width, height: 500)
        countriesColView.register(CountryCell.self, forCellWithReuseIdentifier: cellId)
        countriesColView.backgroundColor = .white
        countriesColView.delegate = self
        countriesColView.dataSource = self
        view.addSubview(countriesColView)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CountryCell
        return cell
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 2) - 60 , height: 110)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 20, left: 50, bottom: 0, right: 50)

    }
    
}

class CountryCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    func setup() {
        self.backgroundColor = .red
        self.layer.cornerRadius = 15
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
