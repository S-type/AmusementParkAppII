//
//  NewPassViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Stipe Vucemilovic on 6/17/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit


protocol AccessControllable {
    var amusementPassCheck: String { get }
    var kitchenPassCheck: String { get }
    var maintenancePassCheck: String { get }
    var officePasscheck: String { get }
    var ridePassCheck: String { get }
    var ridesPassCheck: String { get }
    var skipRidesPassCheck: String { get }
    var foodDiscountPassCheck: String { get }
    var merchDiscountPassCheck: String { get }
    
    func accessControl(for entrant: EntrantType)
    func prepareAccessControlResults()
    func checkTestResults()
}

class NewPassViewController: UIViewController, AccessControllable {
    
                                              ///DATA PROPERTIES
    var entrantFirstNameData: String = ""
    var entrantLastNameData: String = ""
    var entrantTypeData: String = ""
    
    var entrantAllRidesData: String = ""
    var entrantSkipRidesData: String = ""
    
    var entrantDiscountFoodData: Int = 0
    var entrantDiscountMerchandiseData: Int = 0
    var birthInfo: String? = ""
    
    var merchDiscountPassCheck: String = ""
    var foodDiscountPassCheck: String = ""
    var skipRidesPassCheck: String = ""
    var ridesPassCheck: String = ""
    var ridePassCheck: String = ""
    var officePasscheck: String = ""
    var maintenancePassCheck: String = ""
    var kitchenPassCheck: String = ""
    var amusementPassCheck: String = ""
    
    var createNewPassView = UIView()
    var entrantInfoView = UIView()
    var entrantInfoViewTopHole = UIView()
    var entrantImageView = UIView()
    var entrantInfoBox = UIView()
    var entrantNameAndTypeStackView = UIStackView()
    var entrantAccessAndDiscountStackView = UIStackView()
    var stackViewCustomSpace1 = UIView()
    var stackViewCustomSpace2 = UIView()
    var stackViewCustomSpace3 = UIView()
    var stackViewCustomSpace4 = UIView()
    
    var infoBoxViewLine = UIView()
    
    var accessButtonView = UIView()
    var accessButtonStackView = UIStackView()
    var rideAndDiscountButtonStackView = UIStackView()
    
                                              ///NEW PASS LABEL
    
    lazy var createNewPassTopLabel: UILabel = {
        let labelNewPass = UILabel()
        labelNewPass.backgroundColor = ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor()
        labelNewPass.textColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        labelNewPass.textAlignment = .center
        labelNewPass.text = "Create New Pass"
        return labelNewPass
    }()
                                              ///ENTRANT PASS INFORMATION LABELS
    
    lazy var entrantLabel: UILabel = {
        let labelEntrant = UILabel()
        labelEntrant.textColor = ColorSelection.gray(white: 0.2, alpha: 0.9).getColor()
        labelEntrant.font = UIFont.boldSystemFont(ofSize: 26.0)
        return labelEntrant
    }()
    
    lazy var entrantTypeLabel: UILabel = {
        let labelTypeEntrant = UILabel()
        labelTypeEntrant.textColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor()
        labelTypeEntrant.font = labelTypeEntrant.font.withSize(18.0)
        return labelTypeEntrant
    }()
    
    lazy var entrantRideLabel: UILabel = {
        let labelRide = UILabel()
        labelRide.textColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor()
        labelRide.font = labelRide.font.withSize(14.0)
        return labelRide
    }()
    
    lazy var entrantSkipLabel: UILabel = {
        let labelSkip = UILabel()
        labelSkip.textColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor()
        labelSkip.font = labelSkip.font.withSize(14.0)
        return labelSkip
    }()
    
    lazy var entrantDiscountFoodLabel: UILabel = {
        let labelDiscountFood = UILabel()
        labelDiscountFood.textColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor()
        labelDiscountFood.font = labelDiscountFood.font.withSize(14.0)
        return labelDiscountFood
    }()
    
    lazy var entrantDiscountMerchadiseLabel: UILabel = {
        let labelDiscountMerchadise = UILabel()
        labelDiscountMerchadise.textColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor()
        labelDiscountMerchadise.font = labelDiscountMerchadise.font.withSize(14.0)
        return labelDiscountMerchadise
    }()
    
                                                ///ACCESS TESTING LABELS
    
    lazy var accessTestingLabel: UILabel = {
        let labelAccess = UILabel()
        labelAccess.textColor = ColorSelection.gray(white: 0.3, alpha: 0.9).getColor()
        labelAccess.font = UIFont.boldSystemFont(ofSize: 20.0)
        labelAccess.text = "Access Testing"
        return labelAccess
        
    }()
    
    lazy var confirmPassLabel: UILabel = {
        let labelConfirm = UILabel()
        labelConfirm.textColor = ColorSelection.gray(white: 0.5, alpha: 1.0).getColor()
        labelConfirm.font = labelConfirm.font.withSize(14.0)
        labelConfirm.text = "Confirm the pass has the expected level of access when swiped at a kiosk"
        return labelConfirm
    }()
    
    lazy var testResultsLabel: UILabel = {
        let labelTestResults = UILabel()
        labelTestResults.backgroundColor = ColorSelection.purple(red: 0.75 , green: 0.74, blue: 0.77, alpha: 1.0).getColor()
        labelTestResults.layer.masksToBounds = true
        labelTestResults.layer.cornerRadius = 5
        labelTestResults.layer.borderWidth = 0.6
        labelTestResults.layer.borderColor = ColorSelection.white(white: 0.6, alpha: 1.0).getColor().cgColor
        labelTestResults.textAlignment = .center
        labelTestResults.textColor = ColorSelection.gray(white: 0.7, alpha: 1.0).getColor()
        labelTestResults.font = UIFont.boldSystemFont(ofSize: 16.0)
        labelTestResults.text = "Test Results"
        return labelTestResults
    }()
    
    lazy var personalizedMessageLabel: UILabel = {
        let labelPerson = UILabel()
        labelPerson.textColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor()
        labelPerson.font = UIFont.boldSystemFont(ofSize: 14.0)
        return labelPerson
    }()
                                                ///ACCESS TESTING BUTTONS
    
    lazy var amusementAreaButton: UIButton = {
        let buttonAmusement = UIButton(type: .system)
        buttonAmusement.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonAmusement.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonAmusement.layer.cornerRadius = 2.5
        buttonAmusement.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonAmusement.setTitle("Amusement", for: .normal)
        buttonAmusement.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonAmusement
    }()
    
    lazy var kitchenAreaButton: UIButton = {
        let buttonKitchen = UIButton(type: .system)
        buttonKitchen.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonKitchen.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonKitchen.layer.cornerRadius = 2.5
        buttonKitchen.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonKitchen.setTitle("Kitchen", for: .normal)
        buttonKitchen.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonKitchen
    }()
    
    lazy var maintenanceAreaButton: UIButton = {
        let buttonMaintenance = UIButton(type: .system)
        buttonMaintenance.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonMaintenance.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonMaintenance.layer.cornerRadius = 2.5
        buttonMaintenance.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonMaintenance.setTitle("Maintenance", for: .normal)
        buttonMaintenance.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonMaintenance
    }()
    
    lazy var officeAreaButton: UIButton = {
        let buttonOffice = UIButton(type: .system)
        buttonOffice.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonOffice.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonOffice.layer.cornerRadius = 2.5
        buttonOffice.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonOffice.setTitle("Office", for: .normal)
        buttonOffice.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonOffice
    }()
    
    lazy var rideControlAreaButton: UIButton = {
        let buttonControlArea = UIButton(type: .system)
        buttonControlArea.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonControlArea.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonControlArea.layer.cornerRadius = 2.5
        buttonControlArea.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonControlArea.setTitle("Ride Control", for: .normal)
        buttonControlArea.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonControlArea
    }()
    
    lazy var allRidesButton: UIButton = {
        let buttonAllRides = UIButton(type: .system)
        buttonAllRides.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonAllRides.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonAllRides.layer.cornerRadius = 2.5
        buttonAllRides.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonAllRides.setTitle("All Rides", for: .normal)
        buttonAllRides.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonAllRides
    }()
    
    lazy var skipAllRideLinesButton: UIButton = {
        let buttonSkipLines = UIButton(type: .system)
        buttonSkipLines.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonSkipLines.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonSkipLines.layer.cornerRadius = 2.5
        buttonSkipLines.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonSkipLines.setTitle("Skip Lines", for: .normal)
        buttonSkipLines.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonSkipLines
    }()
    
    lazy var foodDiscountButton: UIButton = {
        let buttonFoodDiscount = UIButton(type: .system)
        buttonFoodDiscount.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonFoodDiscount.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonFoodDiscount.layer.cornerRadius = 2.5
        buttonFoodDiscount.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonFoodDiscount.setTitle("Food Discount", for: .normal)
        buttonFoodDiscount.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonFoodDiscount
    }()
    
    lazy var merchDiscountButton: UIButton = {
        let buttonMerchDiscount = UIButton(type: .system)
        buttonMerchDiscount.backgroundColor = ColorSelection.white(white: 0.9, alpha: 0.9).getColor()
        buttonMerchDiscount.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        buttonMerchDiscount.layer.cornerRadius = 2.5
        buttonMerchDiscount.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14.0)
        buttonMerchDiscount.setTitle("Merch Discount", for: .normal)
        buttonMerchDiscount.addTarget(self, action: #selector(NewPassViewController.checkTestResults), for: .touchUpInside)
        return buttonMerchDiscount
        
    }()
    
    lazy var createNewPassButton: UIButton = {
        let buttonCreateNewPass = UIButton()
        buttonCreateNewPass.backgroundColor = ColorSelection.purple(red: 0.75 , green: 0.74, blue: 0.77, alpha: 1.0).getColor()
        buttonCreateNewPass.setTitleColor(ColorSelection.white(white: 1.0, alpha: 1.0).getColor(), for: .normal)
        buttonCreateNewPass.titleLabel?.font = UIFont.boldSystemFont(ofSize: 24.0)
        buttonCreateNewPass.layer.cornerRadius = 2.5
        buttonCreateNewPass.setTitle("Create New Pass", for: .normal)
        buttonCreateNewPass.addTarget(self, action: #selector(dismissNewPass), for: .touchUpInside)
        return buttonCreateNewPass
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorSelection.gray(white: 0.9, alpha: 0.9).getColor()
        addEntrantData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
                                            ///SETTING NAME LABELS FROM TEXT FIELDS,CORRECT ENTRANT TYPE AND ACCESS
    
    func addEntrantData()  {
        entrantLabel.text = "\(entrantFirstNameData) \(entrantLastNameData)"
        entrantTypeLabel.text = "\(entrantTypeData) Pass"
        entrantRideLabel.text = "·\(entrantAllRidesData)"
        entrantSkipLabel.text = "·\(entrantSkipRidesData)"
        entrantDiscountFoodLabel.text = "·\(entrantDiscountFoodData)% Food Discount"
        entrantDiscountMerchadiseLabel.text = "·\(entrantDiscountMerchandiseData)% Merch Discount"
        
        if let info = birthInfo {
            personalizedMessageLabel.text = "\(info)"
        }else{
            personalizedMessageLabel.text = ""
        }
        
    }
    
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        createNewPassView.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
        createNewPassView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(createNewPassView)
        NSLayoutConstraint.activate([
            createNewPassView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            createNewPassView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            createNewPassView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 25.0),
            createNewPassView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0.0)
            ])
        
        createNewPassTopLabel.translatesAutoresizingMaskIntoConstraints = false
        createNewPassView.addSubview(createNewPassTopLabel)
        NSLayoutConstraint.activate([
            createNewPassTopLabel.leadingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            createNewPassTopLabel.trailingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            createNewPassTopLabel.topAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.topAnchor, constant: -8.0),
            createNewPassTopLabel.heightAnchor.constraint(equalToConstant: 55.0)
            ])
        
        createNewPassButton.translatesAutoresizingMaskIntoConstraints = false
        createNewPassView.addSubview(createNewPassButton)
        NSLayoutConstraint.activate([
            createNewPassButton.centerXAnchor.constraint(equalTo: createNewPassView.centerXAnchor, constant: 0.0),
            createNewPassButton.bottomAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.bottomAnchor, constant: -30.0),
            createNewPassButton.widthAnchor.constraint(equalToConstant: 320.0),
            createNewPassButton.heightAnchor.constraint(equalToConstant: 70.0)
            ])
        
                                                           ///ENTRANT INFO
        
        entrantInfoView.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        entrantInfoView.layer.cornerRadius = 6.0
        entrantInfoView.translatesAutoresizingMaskIntoConstraints = false
        createNewPassView.addSubview(entrantInfoView)
        NSLayoutConstraint.activate([
            entrantInfoView.leadingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            entrantInfoView.trailingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.trailingAnchor, constant: -15.0),
            entrantInfoView.topAnchor.constraint(equalTo: createNewPassTopLabel.bottomAnchor, constant: 30.0),
            entrantInfoView.heightAnchor.constraint(equalToConstant: 360.0)
            ])
    
        entrantInfoViewTopHole.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
        entrantInfoViewTopHole.layer.cornerRadius = 5.0
        entrantInfoViewTopHole.layer.borderWidth = 0.8
        entrantInfoViewTopHole.layer.borderColor = ColorSelection.white(white: 0.8, alpha: 1.0).getColor().cgColor
        entrantInfoViewTopHole.translatesAutoresizingMaskIntoConstraints = false
        entrantInfoView.addSubview(entrantInfoViewTopHole)
        NSLayoutConstraint.activate([
            entrantInfoViewTopHole.centerXAnchor.constraint(equalTo: entrantInfoView.centerXAnchor, constant: 0.0),
            entrantInfoViewTopHole.topAnchor.constraint(equalTo: entrantInfoView.layoutMarginsGuide.topAnchor, constant: 15.0),
            entrantInfoViewTopHole.widthAnchor.constraint(equalToConstant: 45.0),
            entrantInfoViewTopHole.heightAnchor.constraint(equalToConstant: 10.0)
            ])
        
        entrantImageView.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "FaceImageAsset"))
        entrantImageView.layer.cornerRadius = 2.5
        entrantImageView.translatesAutoresizingMaskIntoConstraints = false
        entrantInfoView.addSubview(entrantImageView)
        NSLayoutConstraint.activate([
            entrantImageView.leadingAnchor.constraint(equalTo: entrantInfoView.layoutMarginsGuide.leadingAnchor, constant: 45.0),
            entrantImageView.centerYAnchor.constraint(equalTo: entrantInfoView.centerYAnchor, constant: 0.0),
            entrantImageView.heightAnchor.constraint(equalToConstant: 200.0),
            entrantImageView.widthAnchor.constraint(equalToConstant: 200.0)
            ])
                                                           ///ENTRANT INFO/NAME AND TYPE
        
        entrantInfoBox.translatesAutoresizingMaskIntoConstraints = false
        entrantInfoView.addSubview(entrantInfoBox)
        NSLayoutConstraint.activate([
            entrantInfoBox.leadingAnchor.constraint(equalTo: entrantImageView.layoutMarginsGuide.trailingAnchor, constant: 45.0),
            entrantInfoBox.trailingAnchor.constraint(equalTo: entrantInfoView.layoutMarginsGuide.trailingAnchor, constant: -45.0),
            entrantInfoBox.centerYAnchor.constraint(equalTo: entrantInfoView.centerYAnchor, constant: 0.0),
            entrantInfoBox.heightAnchor.constraint(equalToConstant: 200.0)
            ])
        
        entrantNameAndTypeStackView.translatesAutoresizingMaskIntoConstraints = false
        entrantNameAndTypeStackView.axis = .vertical
        entrantNameAndTypeStackView.alignment = .leading
        entrantNameAndTypeStackView.distribution = .fillEqually
        entrantInfoBox.addSubview(entrantNameAndTypeStackView)
        NSLayoutConstraint.activate([
            entrantNameAndTypeStackView.leadingAnchor.constraint(equalTo: entrantInfoBox.layoutMarginsGuide.leadingAnchor, constant: 0.0),
            entrantNameAndTypeStackView.topAnchor.constraint(equalTo: entrantInfoBox.layoutMarginsGuide.topAnchor, constant: 0.0),
            entrantNameAndTypeStackView.trailingAnchor.constraint(equalTo: entrantInfoBox.layoutMarginsGuide.trailingAnchor, constant: 0.0)
            ])
        
        entrantLabel.text = "\(entrantFirstNameData) \(entrantLastNameData)"
        entrantTypeLabel.text = "\(entrantTypeData)"
        
        entrantNameAndTypeStackView.addArrangedSubview(entrantLabel)
        entrantNameAndTypeStackView.addArrangedSubview(entrantTypeLabel)
        
                                                          ///ENTRANT INFO/RIDE AND DISCOUNT
        
        entrantAccessAndDiscountStackView.translatesAutoresizingMaskIntoConstraints = false
        entrantAccessAndDiscountStackView.axis = .vertical
        entrantAccessAndDiscountStackView.alignment = .leading
        entrantAccessAndDiscountStackView.distribution = .fillEqually
        entrantInfoBox.addSubview(entrantAccessAndDiscountStackView)
        NSLayoutConstraint.activate([
            entrantAccessAndDiscountStackView.leadingAnchor.constraint(equalTo: entrantInfoBox.layoutMarginsGuide.leadingAnchor, constant: 0.0),
            entrantAccessAndDiscountStackView.bottomAnchor.constraint(equalTo: entrantInfoBox.layoutMarginsGuide.bottomAnchor, constant: 0.0),
            entrantAccessAndDiscountStackView.trailingAnchor.constraint(equalTo: entrantInfoBox.layoutMarginsGuide.trailingAnchor, constant: 0.0),
            entrantAccessAndDiscountStackView.heightAnchor.constraint(equalToConstant: 90.0)
            ])
        
        entrantRideLabel.text = "· \(entrantAllRidesData)"
        entrantSkipLabel.text = "· \(entrantSkipRidesData)"
        
        entrantDiscountFoodLabel.text = "· \(entrantDiscountFoodData)% Food Discount"
        entrantDiscountMerchadiseLabel.text = "· \(entrantDiscountMerchandiseData)% Merch Discount"
        
        stackViewCustomSpace1.bounds.size.height = 2.0
        stackViewCustomSpace2.bounds.size.height = 2.0
        stackViewCustomSpace3.bounds.size.height = 2.0
        stackViewCustomSpace4.bounds.size.height = 2.0
        
        entrantAccessAndDiscountStackView.addArrangedSubview(entrantRideLabel)
        entrantAccessAndDiscountStackView.addArrangedSubview(stackViewCustomSpace1)
        entrantAccessAndDiscountStackView.addArrangedSubview(entrantSkipLabel)
        entrantAccessAndDiscountStackView.addArrangedSubview(stackViewCustomSpace2)
        entrantAccessAndDiscountStackView.addArrangedSubview(entrantDiscountFoodLabel)
        entrantAccessAndDiscountStackView.addArrangedSubview(stackViewCustomSpace3)
        entrantAccessAndDiscountStackView.addArrangedSubview(entrantDiscountMerchadiseLabel)
        entrantAccessAndDiscountStackView.addArrangedSubview(stackViewCustomSpace4)
        entrantAccessAndDiscountStackView.addArrangedSubview(personalizedMessageLabel)
        
                                                          ///ENTRANT INFO/LINE
        
        infoBoxViewLine.translatesAutoresizingMaskIntoConstraints = false
        infoBoxViewLine.backgroundColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor()
        createNewPassView.addSubview(infoBoxViewLine)
        NSLayoutConstraint.activate([
            infoBoxViewLine.leadingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            infoBoxViewLine.trailingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            infoBoxViewLine.topAnchor.constraint(equalTo: entrantInfoView.layoutMarginsGuide.bottomAnchor, constant: 45.0),
            infoBoxViewLine.heightAnchor.constraint(equalToConstant: 0.5)
            ])
        
                                                          ///ACCESS TESTING
        
        accessTestingLabel.translatesAutoresizingMaskIntoConstraints = false
        createNewPassView.addSubview(accessTestingLabel)
        NSLayoutConstraint.activate([
            accessTestingLabel.centerXAnchor.constraint(equalTo: createNewPassView.centerXAnchor, constant: 0.0),
            accessTestingLabel.topAnchor.constraint(equalTo: infoBoxViewLine.layoutMarginsGuide.bottomAnchor, constant: 40.0)
            ])
        
        confirmPassLabel.translatesAutoresizingMaskIntoConstraints = false
        createNewPassView.addSubview(confirmPassLabel)
        NSLayoutConstraint.activate([
            confirmPassLabel.centerXAnchor.constraint(equalTo: createNewPassView.centerXAnchor, constant: 0.0),
            confirmPassLabel.topAnchor.constraint(equalTo: accessTestingLabel.bottomAnchor, constant: 15.0)
            ])
                                                                  ///ACCESS TESTING BUTTONS
        
        accessButtonView.translatesAutoresizingMaskIntoConstraints = false
        createNewPassView.addSubview(accessButtonView)
        NSLayoutConstraint.activate([
            accessButtonView.leadingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.leadingAnchor, constant: 0.0),
            accessButtonView.trailingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.trailingAnchor, constant: 0.0),
            accessButtonView.topAnchor.constraint(equalTo: confirmPassLabel.bottomAnchor, constant: 20.0),
            accessButtonView.heightAnchor.constraint(equalToConstant: 100.0)
            ])
        
        accessButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        accessButtonStackView.distribution = .fillEqually
        accessButtonView.addSubview(accessButtonStackView)
        NSLayoutConstraint.activate([
            accessButtonStackView.leadingAnchor.constraint(equalTo: accessButtonView.leadingAnchor, constant: 15.0),
            accessButtonStackView.trailingAnchor.constraint(equalTo: accessButtonView.trailingAnchor, constant: -15.0),
            accessButtonStackView.topAnchor.constraint(equalTo: accessButtonView.topAnchor, constant: 0.0),
            accessButtonStackView.heightAnchor.constraint(equalToConstant: 45.0)
            ])
        
        amusementAreaButton.bounds.size.width = 120.0
        kitchenAreaButton.bounds.size.width = 120.0
        maintenanceAreaButton.bounds.size.width = 120.0
        officeAreaButton.bounds.size.width = 120.0
        rideControlAreaButton.bounds.size.width = 120.0
        
        accessButtonStackView.addArrangedSubview(amusementAreaButton)
        accessButtonStackView.addArrangedSubview(kitchenAreaButton)
        accessButtonStackView.addArrangedSubview(maintenanceAreaButton)
        accessButtonStackView.addArrangedSubview(officeAreaButton)
        accessButtonStackView.addArrangedSubview(rideControlAreaButton)
        
        rideAndDiscountButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        rideAndDiscountButtonStackView.distribution = .fillEqually
        accessButtonView.addSubview(rideAndDiscountButtonStackView)
        NSLayoutConstraint.activate([
            rideAndDiscountButtonStackView.leadingAnchor.constraint(equalTo: accessButtonView.leadingAnchor, constant: 15.0),
            rideAndDiscountButtonStackView.trailingAnchor.constraint(equalTo: accessButtonView.trailingAnchor, constant: -15.0),
            rideAndDiscountButtonStackView.bottomAnchor.constraint(equalTo: accessButtonView.bottomAnchor, constant: 0.0),
            rideAndDiscountButtonStackView.heightAnchor.constraint(equalToConstant: 45.0)
            ])
        
        allRidesButton.bounds.size.width = 120.0
        skipAllRideLinesButton.bounds.size.width = 120.0
        foodDiscountButton.bounds.size.width = 120.0
        merchDiscountButton.bounds.size.width = 120.0
        
        rideAndDiscountButtonStackView.addArrangedSubview(allRidesButton)
        rideAndDiscountButtonStackView.addArrangedSubview(skipAllRideLinesButton)
        rideAndDiscountButtonStackView.addArrangedSubview(foodDiscountButton)
        rideAndDiscountButtonStackView.addArrangedSubview(merchDiscountButton)
        
                                                                  ///ACCESS TESTING LABELS
        
        testResultsLabel.translatesAutoresizingMaskIntoConstraints = false
        createNewPassView.addSubview(testResultsLabel)
        NSLayoutConstraint.activate([
            testResultsLabel.leadingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            testResultsLabel.trailingAnchor.constraint(equalTo: createNewPassView.layoutMarginsGuide.trailingAnchor, constant: -15.0),
            testResultsLabel.topAnchor.constraint(equalTo: accessButtonView.layoutMarginsGuide.bottomAnchor, constant: 30.0),
            testResultsLabel.bottomAnchor.constraint(equalTo: createNewPassButton.topAnchor, constant: -35.0)
            ])
        
    }
                                            ///SWIPE + ACCESS CONTROL METHODS

    func accessControl(for entrant: EntrantType) {
    
        if entrant.entrantAreaAccess.amusementArea == true {
            amusementPassCheck = "Amusement Park Area ALLOWED"
            }else{
            amusementPassCheck = "Amusement Park Area DENIED"
        }
        
        if entrant.entrantAreaAccess.kitchenArea == true {
            kitchenPassCheck = "Kitchen Area ALLOWED"
        }else{
            kitchenPassCheck = "Kitchen Area DENIED"
        }
        
        if entrant.entrantAreaAccess.maintenanceArea == true {
            maintenancePassCheck = "Maintenance Area ALLOWED"
        }else{
            maintenancePassCheck = "Maintenance Area DENIED"
        }
        
        if entrant.entrantAreaAccess.officeArea == true{
            officePasscheck = "Office Area ALLOWED"
        }else{
            officePasscheck = "Office Area DENIED"
        }
        
        if entrant.entrantAreaAccess.rideControlArea == true {
            ridePassCheck = "Ride Control Area ALLOWED"
        }else{
            ridePassCheck = "Ride Control Area DENIED"
        }
        
    
    
        if entrant.entrantRideAccess.accessAllRides == true {
            ridesPassCheck = "All Rides ALLOWED"
        }else{
            ridesPassCheck = "All Rides DENIED"
        }
        
        if entrant.entrantRideAccess.skipAllRideLines == true {
            skipRidesPassCheck = "Skip All Ride Lines ALLOWED"
        }else{
            skipRidesPassCheck = "Skip All Ride Lines DENIED"
        }

    

        for discount in 0...entrant.entrantDiscountAccess.discountOnFood {
            
            if discount == 10 || discount == 15 || discount == 25 {
                foodDiscountPassCheck = "Discount of \(discount)% is available"
                }else{
                foodDiscountPassCheck = "Discount is not available"
                }
            }
            
            for discount in 0...entrant.entrantDiscountAccess.discountOnMerchandise {
            
                if discount == 20 || discount == 25 {
                merchDiscountPassCheck = "Discount of \(discount)% is available"
                }else{
                merchDiscountPassCheck = "Discount is not available"
            }
        }
    }
    
                                              ///CALL ACCESS CONTROL METHOD AND DEFINE ENTRANT TYPE
    func prepareAccessControlResults() {
   
        if entrantTypeLabel.text == "Classic" {
            accessControl(for: .classicGuest)
        }
        
        if entrantTypeLabel.text == "VIP" {
            accessControl(for: .vipGuest)
        }
        
        if entrantTypeLabel.text == "Free Child" {
            accessControl(for: .freeChildGuest)
        }
        
        if entrantTypeLabel.text == "Season Pass Guest" {
            accessControl(for: .seasonPassGuest)
        }
        
        if entrantTypeLabel.text == "Senior Guest" {
            accessControl(for: .seniorGuest)
        }
        
        if entrantTypeLabel.text == "Food Service" {
            accessControl(for: .hourlyEmployeeFoodService)
        }
        
        if entrantTypeLabel.text == "Ride Service" {
            accessControl(for: .hourlyEmployeeRideService)
        }
        
        if entrantTypeLabel.text == "Maintenance" {
            accessControl(for: .hourlyEmployeeMaintenance)
        }
        
        if entrantTypeLabel.text == "Contract Employee" {
            accessControl(for: .contractEmployee)
        }
        
        if entrantTypeLabel.text == "Manager" {
            accessControl(for: .manager)
        }
        
        if entrantTypeLabel.text == "Vendor" {
            accessControl(for: .vendor)
        }
    }
                                              ///TEST RESULTS METHOD
    
    func checkTestResults() {

        if amusementAreaButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(amusementPassCheck)"
            if testResultsLabel.text == "Amusement Park Area ALLOWED" {
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }else if testResultsLabel.text == "Amusement Park Area DENIED" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }
        }else if kitchenAreaButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(kitchenPassCheck)"
            if testResultsLabel.text == "Kitchen Area ALLOWED" {
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }else if testResultsLabel.text == "Kitchen Area DENIED" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }
        }else if maintenanceAreaButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(maintenancePassCheck)"
            if testResultsLabel.text == "Maintenance Area ALLOWED" {
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }else if testResultsLabel.text == "Maintenance Area DENIED" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }
        }else if officeAreaButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(officePasscheck)"
            if testResultsLabel.text == "Office Area ALLOWED" {
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }else if testResultsLabel.text == "Office Area DENIED" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }
        }else if rideControlAreaButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(ridePassCheck)"
            if testResultsLabel.text == "Ride Control Area ALLOWED"{
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }else if testResultsLabel.text == "Ride Control Area ALLOWED" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }
        }else if allRidesButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(ridesPassCheck)"
            if testResultsLabel.text == "All Rides ALLOWED"{
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }else if testResultsLabel.text == "All Rides DENIED" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }
        }else if skipAllRideLinesButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(skipRidesPassCheck)"
            if testResultsLabel.text == "Skip All Ride Lines ALLOWED"{
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }else if testResultsLabel.text == "Skip All Ride Lines DENIED" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }
        }else if foodDiscountButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(foodDiscountPassCheck)"
            if testResultsLabel.text == "Discount is not available" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }else{
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
            }
        }else if merchDiscountButton.isHighlighted {
            prepareAccessControlResults()
            testResultsLabel.text = "\(merchDiscountPassCheck)"
            if testResultsLabel.text == "Discount is not available" {
                testResultsLabel.backgroundColor = ColorSelection.red(red: 0.87, green: 0.0, blue: 0.0, alpha: 1.0).getColor()
            }else{
                testResultsLabel.backgroundColor = ColorSelection.green(red: 0.40, green: 0.60, blue: 0.40, alpha: 1.0).getColor()
        }
    }
}
    
                                            ///DISMISS NEW PASS   ///   HELPER METHOD
    
    func dismissNewPass() {
        dismiss(animated: true, completion: nil)
    }
    
}

































