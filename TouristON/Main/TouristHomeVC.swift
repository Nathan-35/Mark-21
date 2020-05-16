//
//  TouristHomeVC.swift
//  TouristON
//
//  Created by Алишер Сагимбаев on 04.12.2019.
//  Copyright © 2019 Nathan. All rights reserved.
//

import UIKit

class TouristHomeVC: UIViewController, UITextFieldDelegate, UICollectionViewDelegate, UICollectionViewDataSource, CustomLayoutDelegate{
    
    private var mainColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
    var headImageView = UIImageView()
    var headImage = UIImage(named: "mainHead")
    var button = UIButton()
    var searchView = AnimatedView()
    var searchLabel = UILabel()
    var searchBar = CustomTextField()
    var headLabel = UILabel()
    var subLabel = UILabel()
    var searchLine = UIView()
    var searchImage = UIImageView()
    var countriesColView = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout())
    var customCollectionViewLayout = CustomCollectionViewLayout()
    var cellId = "cell"
    var choosedVC = ChoosedCountryVC()
    
    
    struct Model {
        var index: Int
        var isBig: Bool
    }
    private var countries = ["USA","Emirates","France","Germany",
                             "Italy","Japan","Portugal","Russia",
                             "Spain","Tailand", "UK", "Canada"]
    
    private let dataSet = [Model(index: 1, isBig: false), Model(index: 2, isBig: true), Model(index: 3, isBig: true),
                           Model(index: 4, isBig: false), Model(index: 5, isBig: true), Model(index: 6, isBig: false),
                           Model(index: 7, isBig: false), Model(index: 8, isBig: true), Model(index: 9, isBig: true),
                           Model(index: 10, isBig: false), Model(index: 11, isBig: false), Model(index: 12, isBig: true)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createCountriesCollection()
        customCollectionViewLayout.delegate = self
        customCollectionViewLayout.numberOfColumns = 2
        countriesColView.collectionViewLayout = customCollectionViewLayout
        createHeadImage()
        //createAccountButton()
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
        searchBar.placeholder = "enter the country..."
        searchBar.font = UIFont(name: "Helvetica", size: 15)
        searchBar.clearButtonMode = .whileEditing
        searchBar.tintColor = mainColor
        searchBar.keyboardAppearance = .dark
        searchBar.delegate = self
        searchBar.addTarget(self, action: #selector(tap), for: .touchDown)
        view.addSubview(searchBar)
    }
    
//    func createAccountButton(){
//        button.frame = CGRect(x: self.view.bounds.maxX - 80, y: view.bounds.minY + 50, width: 48, height: 48)
//        button.adjustsImageWhenHighlighted = false
//        button.setImage(UIImage(named: "account"), for: .normal)
//        button.addTarget(self, action: #selector(go), for: .touchUpInside)
//        view.addSubview(button)
//    }
//
//
//    @objc func go(){
//        let accountVC = AccountViewController()
//        navigationController?.pushViewController(accountVC, animated: true)
//    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        searchBar.resignFirstResponder()
    }
    
    func createCountriesCollection(){
        countriesColView.frame = CGRect(x: 30, y: 290, width: view.frame.width - 60, height: 500)
        countriesColView.register(CountryCell.self, forCellWithReuseIdentifier: cellId)
        countriesColView.backgroundColor = .white
        countriesColView.delegate = self
        countriesColView.dataSource = self
        countriesColView.showsVerticalScrollIndicator = false
        view.addSubview(countriesColView)
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSet.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CountryCell
        cell.backgroundView = UIImageView(image: UIImage(named: countries[indexPath.row]))
        cell.countryLabel.text = countries[indexPath.row]
        cell.clipsToBounds = true
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, heightForItemAt indexPath: IndexPath, with width: CGFloat) -> CGFloat {
            let heightSizes = [120,216]
            return CGFloat(heightSizes[dataSet[indexPath.row].isBig ? 1 : 0])
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        choosedVC.choosedCountry = countries[indexPath.row]
        navigationController?.pushViewController(self.choosedVC, animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchBar.resignFirstResponder()
        return true
    }
    
    @objc func tap(){
        searchView.pulsate()
    }
    
}

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
        
        addSubview(backView)
        addSubview(countryLabel)
        
        backView.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        backView.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        backView.layer.cornerRadius = 10
        backView.alpha = 0.8
        countryLabel.font = UIFont(name: "Georgia", size: 20)
        countryLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        NSLayoutConstraint.activate([
            countryLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 1),
            countryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 3),
            countryLabel.heightAnchor.constraint(equalToConstant: 30),
            
            backView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: -7),
            backView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -9),
            backView.widthAnchor.constraint(equalTo: countryLabel.widthAnchor, constant: 17),
            backView.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
