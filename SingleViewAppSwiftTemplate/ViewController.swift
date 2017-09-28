//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let generatePassView = UIView()
    
    let buttonStackView = UIStackView()
    let guestSubButtonStackView = UIStackView()
    let employeeSubButtonStackView = UIStackView()
    
    let birthSSNProjectStackViewLabels = UIStackView()
    let birthSSNProjectStackViewTextFields = UIStackView()
    let birthSSNProjectViewLine = UIView()
    
    let firstLastNameStackViewLabels = UIStackView()
    let firstLastNameStackViewTextFields = UIStackView()
    let firstLastNameViewLine = UIView()
    
    let companyStackViewLabel = UIStackView()
    let companyStackViewTextField = UIStackView()
    let companyViewLine = UIView()
    
    let addressStackViewLabel = UIStackView()
    let addressStackViewTextField = UIStackView()
    
    let cityStateZipStackViewLabels = UIStackView()
    let cityStateZipStackViewTextFields = UIStackView()
    let cityStateZipViewLine = UIView()
    
    let navigateButtonsStackView = UIStackView()
    
    let markedButtonTitleColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
    let unMarkedButtonTitleColor = ColorSelection.white(white: 0.8, alpha: 0.8).getColor()
    let markedFieldLabelColor = ColorSelection.gray(white: 0.3, alpha: 0.9).getColor()
    let unMarkedFieldLabelColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
    
    let unMarkedTextFieldColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
    
    let yearBirthField : Int = 0


                                             ///TEXTFIELDS
    
    lazy var birthDateField: UITextField = {
        let fieldBirth = UITextField()
        fieldBirth.placeholder = "MM/DD/YYYY"
        fieldBirth.font = UIFont(name: (fieldBirth.font?.fontName)!, size: 15.0)
        fieldBirth.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        fieldBirth.layer.borderWidth = 1.3
        fieldBirth.layer.cornerRadius = 2.5
        fieldBirth.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldBirth.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldBirth.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldBirth
    }()
    
    lazy var birthDateLabel: UILabel = {
        let labelBirth = UILabel()
        labelBirth.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelBirth.text = "Date of Birth"
        labelBirth.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelBirth
    }()
    
    lazy var ssnField: UITextField = {
        let fieldSsn = UITextField()
        fieldSsn.placeholder = "###-##-####"
        fieldSsn.font = UIFont(name: (fieldSsn.font?.fontName)!, size: 15.0)
        fieldSsn.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        fieldSsn.layer.borderWidth = 1.3
        fieldSsn.layer.cornerRadius = 2.5
        fieldSsn.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldSsn.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldSsn.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldSsn
    }()
    
    lazy var ssnLabel: UILabel = {
        let labelSsn = UILabel()
        labelSsn.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelSsn.text = "SSN"
        labelSsn.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelSsn
    }()
    
    lazy var projectField: UITextField = {
        let fieldProject = UITextField()
        fieldProject.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        fieldProject.placeholder = "#######"
        fieldProject.font = UIFont(name: (fieldProject.font?.fontName)!, size: 15.0)
        fieldProject.layer.borderWidth = 1.3
        fieldProject.layer.cornerRadius = 2.5
        fieldProject.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldProject.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldProject.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldProject
    }()
    
    lazy var projectLabel: UILabel = {
        let labelProject = UILabel()
        labelProject.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelProject.text = "Project#"
        labelProject.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelProject
    }()
    
    lazy var firstNameField: UITextField = {
        let fieldFirstName = UITextField()
        fieldFirstName.font = UIFont(name: (fieldFirstName.font?.fontName)!, size: 15.0)
        fieldFirstName.layer.borderWidth = 1.3
        fieldFirstName.layer.cornerRadius = 2.5
        fieldFirstName.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldFirstName.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldFirstName.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldFirstName
        
    }()
    
    lazy var firstNameLabel: UILabel = {
        let labelFirstName = UILabel()
        labelFirstName.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelFirstName.text = "First Name"
        labelFirstName.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelFirstName
        
    }()
    
    lazy var lastNameField: UITextField = {
        let fieldLastName = UITextField()
        fieldLastName.font = UIFont(name: (fieldLastName.font?.fontName)!, size: 15.0)
        fieldLastName.layer.borderWidth = 1.3
        fieldLastName.layer.cornerRadius = 2.5
        fieldLastName.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldLastName.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldLastName.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldLastName
    }()
    
    lazy var lastNameLabel: UILabel = {
        let labelLastName = UILabel()
        labelLastName.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelLastName.text = "Last Name"
        labelLastName.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelLastName
    }()
    
    lazy var companyField: UITextField = {
        let fieldCompany = UITextField()
        fieldCompany.font = UIFont(name: (fieldCompany.font?.fontName)!, size: 15.0)
        fieldCompany.layer.borderWidth = 1.3
        fieldCompany.layer.cornerRadius = 2.5
        fieldCompany.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldCompany.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldCompany.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldCompany
    }()
    
    lazy var companyLabel: UILabel = {
        let labelCompany = UILabel()
        labelCompany.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelCompany.text = "Company"
        labelCompany.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelCompany
    }()
    
    lazy var streetAddressField: UITextField = {
        let fieldStreetAddress = UITextField()
        fieldStreetAddress.font = UIFont(name: (fieldStreetAddress.font?.fontName)!, size: 15.0)
        fieldStreetAddress.layer.borderWidth = 1.3
        fieldStreetAddress.layer.cornerRadius = 2.5
        fieldStreetAddress.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldStreetAddress.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldStreetAddress.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldStreetAddress
    }()
    
    lazy var streetAddressLabel: UILabel = {
        let labelStreetAddress = UILabel()
        labelStreetAddress.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelStreetAddress.text = "Street Address"
        labelStreetAddress.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelStreetAddress
    }()
    
    lazy var cityField: UITextField = {
        let fieldCity = UITextField()
        fieldCity.font = UIFont(name: (fieldCity.font?.fontName)!, size: 15.0)
        fieldCity.layer.borderWidth = 1.3
        fieldCity.layer.cornerRadius = 2.5
        fieldCity.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldCity.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldCity.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldCity
    }()
    
    lazy var cityLabel: UILabel = {
        let labelCity = UILabel()
        labelCity.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelCity.text = "City"
        labelCity.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelCity
    }()
    
    lazy var stateField: UITextField = {
        let fieldState = UITextField()
        fieldState.font = UIFont(name: (fieldState.font?.fontName)!, size: 15.0)
        fieldState.layer.borderWidth = 1.3
        fieldState.layer.cornerRadius = 2.5
        fieldState.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldState.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldState.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldState
    }()
    
    lazy var stateLabel: UILabel = {
        let labelState = UILabel()
        labelState.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelState.text = "State"
        labelState.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelState
    }()
    
    lazy var zipCodeField: UITextField = {
        let fieldZipCode = UITextField()
        fieldZipCode.font = UIFont(name: (fieldZipCode.font?.fontName)!, size: 15.0)
        fieldZipCode.layer.borderWidth = 1.3
        fieldZipCode.layer.cornerRadius = 2.5
        fieldZipCode.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldZipCode.layer.sublayerTransform = CATransform3DMakeTranslation(15.0, 0.0, 0.0)
        fieldZipCode.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldZipCode
    }()
    
    lazy var zipCodeLabel: UILabel = {
        let labelZipCode = UILabel()
        labelZipCode.textColor = ColorSelection.gray(white: 0.55, alpha: 0.9).getColor()
        labelZipCode.text = "Zip Code"
        labelZipCode.font = UIFont.boldSystemFont(ofSize: 16.0)
        return labelZipCode
    }()
                                            ///GUEST BUTTONS
    
    lazy var guestButton: UIButton = {
        let buttonGuest = UIButton(type: .system)
        buttonGuest.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonGuest.setTitle("Guest", for: .normal)
        buttonGuest.tintColor = ColorSelection.white(white: 0.8, alpha: 0.8).getColor()
        buttonGuest.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
        buttonGuest.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        return buttonGuest
    }()
    
    lazy var classicGuestSubButton: UIButton = {
        let subButtonClassicGuest = UIButton(type: .system)
        subButtonClassicGuest.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonClassicGuest.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonClassicGuest.setTitle("Classic", for: .normal)
        subButtonClassicGuest.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonClassicGuest
    }()
    
    lazy var vipGuestSubButton: UIButton = {
        let subButtonVipGuest = UIButton(type: .system)
        subButtonVipGuest.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonVipGuest.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonVipGuest.setTitle("VIP", for: .normal)
        subButtonVipGuest.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonVipGuest
    }()
    
    lazy var freeChildSubButton: UIButton = {
        let subButtonFreeChild = UIButton(type: .system)
        subButtonFreeChild.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonFreeChild.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonFreeChild.setTitle("Free Child", for: .normal)
        subButtonFreeChild.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonFreeChild
    }()
    
    lazy var seasonPassGuestSubButton: UIButton = {
        let subButtonSeasonGuest = UIButton(type: .system)
        subButtonSeasonGuest.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonSeasonGuest.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonSeasonGuest.setTitle("Season Pass Guest", for: .normal)
        subButtonSeasonGuest.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonSeasonGuest
    }()
    
    lazy var seniorGuestSubButton: UIButton = {
        let subButtonSenior = UIButton(type: .system)
        subButtonSenior.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonSenior.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonSenior.setTitle("Senior Guest", for: .normal)
        subButtonSenior.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonSenior
        
    }()
                                           ///EMPLOYEE BUTTONS
    
    lazy var employeeButton: UIButton = {
        let buttonEmployee = UIButton(type: .system)
        buttonEmployee.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonEmployee.setTitle("Employee", for: .normal)
        buttonEmployee.tintColor = ColorSelection.white(white: 0.8, alpha: 0.8).getColor()
        buttonEmployee.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
        buttonEmployee.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        return buttonEmployee
        
    }()
    
    lazy var employeeFoodServicesSubButton: UIButton = {
        let subButtonEmployeeFoodService = UIButton(type: .system)
        subButtonEmployeeFoodService.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonEmployeeFoodService.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonEmployeeFoodService.setTitle("Food Service", for: .normal)
        subButtonEmployeeFoodService.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonEmployeeFoodService
    }()
    
    lazy var employeeRideServicesSubButton: UIButton = {
        let subButtonEmployeeRideService = UIButton(type: .system)
        subButtonEmployeeRideService.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonEmployeeRideService.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonEmployeeRideService.setTitle("Ride Service", for: .normal)
        subButtonEmployeeRideService.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonEmployeeRideService
        
    }()
    
    lazy var employeeMaintenanceSubButton: UIButton = {
        let subButtonEmployeeMaintenance = UIButton(type: .system)
        subButtonEmployeeMaintenance.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonEmployeeMaintenance.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonEmployeeMaintenance.setTitle("Maintenance", for: .normal)
        subButtonEmployeeMaintenance.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonEmployeeMaintenance
    }()
    
    lazy var contractEmployeeSubButton: UIButton = {
        let subButtonContractEmployee = UIButton(type: .system)
        subButtonContractEmployee.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonContractEmployee.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonContractEmployee.setTitle("Contract Employee", for: .normal)
        subButtonContractEmployee.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return subButtonContractEmployee
    }()
    
    lazy var managerButton: UIButton = {
        let buttonManager = UIButton(type: .system)
        buttonManager.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonManager.setTitle("Manager", for: .normal)
        buttonManager.tintColor = ColorSelection.white(white: 0.8, alpha: 0.8).getColor()
        buttonManager.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
        buttonManager.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        buttonManager.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return buttonManager
        
    }()
    
    lazy var vendorButton: UIButton = {
        let buttonVendor = UIButton(type: .system)
        buttonVendor.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonVendor.setTitle("Vendor", for: .normal)
        buttonVendor.tintColor = ColorSelection.white(white: 0.8, alpha: 0.8).getColor()
        buttonVendor.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
        buttonVendor.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        buttonVendor.addTarget(self, action: #selector(ViewController.showRequiredField), for: .touchUpInside)
        return buttonVendor
    }()
    
                                             ///NAVIGATE BUTTONS
    
    lazy var generatePassButton: UIButton = {
        let passButton = UIButton(type: .system)
        passButton.backgroundColor = ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor()
        passButton.setTitleColor(ColorSelection.gray(white: 0.9, alpha: 1.0).getColor(), for: .normal)
        passButton.layer.cornerRadius = 2.5
        passButton.setTitle("Generate Pass", for: .normal)
        passButton.addTarget(self, action: #selector(ViewController.checkIfRightFieldIsFilled), for: .touchUpInside)
        return passButton
    }()
    
    lazy var populateDataButton: UIButton = {
        let dataButton = UIButton(type: .system)
        dataButton.backgroundColor = ColorSelection.gray(white: 0.9, alpha: 1.0).getColor()
        dataButton.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        dataButton.layer.cornerRadius = 2.5
        dataButton.setTitle("Populate Data", for: .normal)
        dataButton.addTarget(self, action: #selector(ViewController.populateData), for: .touchUpInside)
        return dataButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorSelection.gray(white: 0.9, alpha: 0.9).getColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
                                              ///DATE COMPONENTS
    func addDateMonth() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let month = calendar.component(.month, from: date)
        return month
    }
    
    func addDateDay() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let day = calendar.component(.day, from: date)
        return day
    }
    
    func addDateYear() -> Int {
        let date = Date()
        let calendar = Calendar.current
        let year = calendar.component(.year, from: date)
        return year
    }
    
                                             ///SHOW CORRECT SUBUTTONS AND SET BUTTON TITLE STYLE
    
    func showCorrectSubButtons() {
      
        classicGuestSubButton.tintColor = unMarkedButtonTitleColor
        vipGuestSubButton.tintColor = unMarkedButtonTitleColor
        freeChildSubButton.tintColor = unMarkedButtonTitleColor
        seasonPassGuestSubButton.tintColor = unMarkedButtonTitleColor
        seniorGuestSubButton.tintColor = unMarkedButtonTitleColor
        employeeFoodServicesSubButton.tintColor = unMarkedButtonTitleColor
        employeeRideServicesSubButton.tintColor = unMarkedButtonTitleColor
        employeeMaintenanceSubButton.tintColor = unMarkedButtonTitleColor
        contractEmployeeSubButton.tintColor = unMarkedButtonTitleColor
        
        if guestButton.isHighlighted {
            
            employeeSubButtonStackView.isHidden = true
            guestSubButtonStackView.isHidden = false
            guestButton.tintColor = markedButtonTitleColor
            employeeButton.tintColor = unMarkedButtonTitleColor
            managerButton.tintColor = unMarkedButtonTitleColor
            vendorButton.tintColor = unMarkedButtonTitleColor
            
    
        }else if employeeButton.isHighlighted {
            guestSubButtonStackView.isHidden = true
            employeeSubButtonStackView.isHidden = false
            guestButton.tintColor = unMarkedButtonTitleColor
            employeeButton.tintColor = markedButtonTitleColor
            managerButton.tintColor = unMarkedButtonTitleColor
            vendorButton.tintColor = unMarkedButtonTitleColor
          
        }else if managerButton.isHighlighted {
            guestSubButtonStackView.isHidden = true
            employeeSubButtonStackView.isHidden = true
            guestButton.tintColor = unMarkedButtonTitleColor
            employeeButton.tintColor = unMarkedButtonTitleColor
            managerButton.tintColor = markedButtonTitleColor
            vendorButton.tintColor = unMarkedButtonTitleColor
            
            
        }else if vendorButton.isHighlighted {
            guestSubButtonStackView.isHidden = true
            employeeSubButtonStackView.isHidden = true
            guestButton.tintColor = unMarkedButtonTitleColor
            employeeButton.tintColor = unMarkedButtonTitleColor
            managerButton.tintColor = unMarkedButtonTitleColor
            vendorButton.tintColor = markedButtonTitleColor
        }
    }
                                           ///SET SUBUTTON TITLE STYLE
    
    func setSubButtonTitleStyle() {
        
        if classicGuestSubButton.isHighlighted {
            classicGuestSubButton.tintColor = markedButtonTitleColor
            vipGuestSubButton.tintColor = unMarkedButtonTitleColor
            freeChildSubButton.tintColor = unMarkedButtonTitleColor
            seasonPassGuestSubButton.tintColor = unMarkedButtonTitleColor
            seniorGuestSubButton.tintColor = unMarkedButtonTitleColor
        
        }else if vipGuestSubButton.isHighlighted {
            classicGuestSubButton.tintColor = unMarkedButtonTitleColor
            vipGuestSubButton.tintColor = markedButtonTitleColor
            freeChildSubButton.tintColor = unMarkedButtonTitleColor
            seasonPassGuestSubButton.tintColor = unMarkedButtonTitleColor
            seniorGuestSubButton.tintColor = unMarkedButtonTitleColor
            
        }else if freeChildSubButton.isHighlighted {
            classicGuestSubButton.tintColor = unMarkedButtonTitleColor
            vipGuestSubButton.tintColor = unMarkedButtonTitleColor
            freeChildSubButton.tintColor = markedButtonTitleColor
            seasonPassGuestSubButton.tintColor = unMarkedButtonTitleColor
            seniorGuestSubButton.tintColor = unMarkedButtonTitleColor
            
        }else if seasonPassGuestSubButton.isHighlighted {
            classicGuestSubButton.tintColor = unMarkedButtonTitleColor
            vipGuestSubButton.tintColor = unMarkedButtonTitleColor
            freeChildSubButton.tintColor = unMarkedButtonTitleColor
            seasonPassGuestSubButton.tintColor = markedButtonTitleColor
            seniorGuestSubButton.tintColor = unMarkedButtonTitleColor
            
        }else if seniorGuestSubButton.isHighlighted {
            classicGuestSubButton.tintColor = unMarkedButtonTitleColor
            vipGuestSubButton.tintColor = unMarkedButtonTitleColor
            freeChildSubButton.tintColor = unMarkedButtonTitleColor
            seasonPassGuestSubButton.tintColor = unMarkedButtonTitleColor
            seniorGuestSubButton.tintColor = markedButtonTitleColor

            
        }else if employeeFoodServicesSubButton.isHighlighted {
            employeeFoodServicesSubButton.tintColor = markedButtonTitleColor
            employeeRideServicesSubButton.tintColor = unMarkedButtonTitleColor
            employeeMaintenanceSubButton.tintColor = unMarkedButtonTitleColor
            contractEmployeeSubButton.tintColor = unMarkedButtonTitleColor

        }else if employeeRideServicesSubButton.isHighlighted {
            employeeFoodServicesSubButton.tintColor = unMarkedButtonTitleColor
            employeeRideServicesSubButton.tintColor = markedButtonTitleColor
            employeeMaintenanceSubButton.tintColor = unMarkedButtonTitleColor
            contractEmployeeSubButton.tintColor = unMarkedButtonTitleColor
            
        }else if employeeMaintenanceSubButton.isHighlighted {
            employeeFoodServicesSubButton.tintColor = unMarkedButtonTitleColor
            employeeRideServicesSubButton.tintColor = unMarkedButtonTitleColor
            employeeMaintenanceSubButton.tintColor = markedButtonTitleColor
            contractEmployeeSubButton.tintColor = unMarkedButtonTitleColor

            
        }else if contractEmployeeSubButton.isHighlighted {
            employeeFoodServicesSubButton.tintColor = unMarkedButtonTitleColor
            employeeRideServicesSubButton.tintColor = unMarkedButtonTitleColor
            employeeMaintenanceSubButton.tintColor = unMarkedButtonTitleColor
            contractEmployeeSubButton.tintColor = markedButtonTitleColor
        }
    }
    
                                            ///SHOW REQUIRED FIELDS
    
    func showRequiredField()  {
        
        setSubButtonTitleStyle()
        
        if employeeFoodServicesSubButton.isHighlighted || employeeRideServicesSubButton.isHighlighted || employeeMaintenanceSubButton.isHighlighted || managerButton.isHighlighted || seasonPassGuestSubButton.isHighlighted {
        
            tranformTextFieldEditBegan(firstNameField, firstNameLabel)
            tranformTextFieldEditBegan(lastNameField, lastNameLabel)
            tranformTextFieldEditBegan(streetAddressField, streetAddressLabel)
            tranformTextFieldEditBegan(cityField, cityLabel)
            tranformTextFieldEditBegan(stateField, stateLabel)
            tranformTextFieldEditBegan(zipCodeField, zipCodeLabel)
            
            transformTextFieldEditEnd(birthDateField)
            transformTextFieldEditEnd(ssnField)
            transformTextFieldEditEnd(projectField)
            transformTextFieldEditEnd(companyField)
            
        }else if freeChildSubButton.isHighlighted {
            
            do {
                throw PassError.birthInfo
            }catch PassError.birthInfo {
                showAlertWith(title: "Free Child Guest must be under 5 years old", message: "Please Confirm Note")
            }catch let error {
                fatalError(error.localizedDescription)
            }
            
            setSubButtonTitleStyle()
            
            tranformTextFieldEditBegan(birthDateField, birthDateLabel)
            
            transformTextFieldEditEnd(ssnField)
            transformTextFieldEditEnd(projectField)
            transformTextFieldEditEnd(firstNameField)
            transformTextFieldEditEnd(lastNameField)
            transformTextFieldEditEnd(companyField)
            transformTextFieldEditEnd(streetAddressField)
            transformTextFieldEditEnd(cityField)
            transformTextFieldEditEnd(stateField)
            transformTextFieldEditEnd(zipCodeField)
            
        }else if seniorGuestSubButton.isHighlighted {
            
            tranformTextFieldEditBegan(firstNameField, firstNameLabel)
            tranformTextFieldEditBegan(lastNameField, lastNameLabel)
            tranformTextFieldEditBegan(birthDateField, birthDateLabel)
            
            transformTextFieldEditEnd(ssnField)
            transformTextFieldEditEnd(projectField)
            transformTextFieldEditEnd(companyField)
            transformTextFieldEditEnd(streetAddressField)
            transformTextFieldEditEnd(cityField)
            transformTextFieldEditEnd(stateField)
            transformTextFieldEditEnd(zipCodeField)
         
        }else if contractEmployeeSubButton.isHighlighted {
            
            tranformTextFieldEditBegan(birthDateField, birthDateLabel)
            tranformTextFieldEditBegan(ssnField, ssnLabel)
            tranformTextFieldEditBegan(projectField, projectLabel)
            tranformTextFieldEditBegan(firstNameField, firstNameLabel)
            tranformTextFieldEditBegan(lastNameField, lastNameLabel)
            tranformTextFieldEditBegan(streetAddressField, streetAddressLabel)
            tranformTextFieldEditBegan(cityField, cityLabel)
            tranformTextFieldEditBegan(stateField, stateLabel)
            tranformTextFieldEditBegan(zipCodeField, zipCodeLabel)
            
            transformTextFieldEditEnd(companyField)
        
        
        }else if vendorButton.isHighlighted{
            
            tranformTextFieldEditBegan(firstNameField, firstNameLabel)
            tranformTextFieldEditBegan(lastNameField, lastNameLabel)
            tranformTextFieldEditBegan(companyField, companyLabel)
            tranformTextFieldEditBegan(birthDateField, birthDateLabel)
            
            transformTextFieldEditEnd(ssnField)
            transformTextFieldEditEnd(projectField)
            transformTextFieldEditEnd(streetAddressField)
            transformTextFieldEditEnd(cityField)
            transformTextFieldEditEnd(stateField)
            transformTextFieldEditEnd(zipCodeField)
            
        }else if classicGuestSubButton.isHighlighted || vipGuestSubButton.isHighlighted {
            
            transformTextFieldEditEnd(birthDateField)
            transformTextFieldEditEnd(ssnField)
            transformTextFieldEditEnd(projectField)
            transformTextFieldEditEnd(firstNameField)
            transformTextFieldEditEnd(lastNameField)
            transformTextFieldEditEnd(companyField)
            transformTextFieldEditEnd(streetAddressField)
            transformTextFieldEditEnd(cityField)
            transformTextFieldEditEnd(stateField)
            transformTextFieldEditEnd(zipCodeField)
        }
    }
                                             ///POSITIONING SUBVIEWS
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        generatePassView.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
        generatePassView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(generatePassView)
        NSLayoutConstraint.activate([
            generatePassView.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            generatePassView.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            generatePassView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 25.0),
            generatePassView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: 0.0),
            ])
                                             ///MAIN BUTTONS
        
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(buttonStackView)
        NSLayoutConstraint.activate([
            buttonStackView.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            buttonStackView.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            buttonStackView.topAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.topAnchor, constant: -8.0),
            buttonStackView.heightAnchor.constraint(equalToConstant: 55.0)
        ])
    
        buttonStackView.addArrangedSubview(guestButton)
        buttonStackView.addArrangedSubview(employeeButton)
        buttonStackView.addArrangedSubview(managerButton)
        buttonStackView.addArrangedSubview(vendorButton)
        
                                                ///GUEST SUBUTTONS
        
        guestSubButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        guestSubButtonStackView.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(guestSubButtonStackView)
        NSLayoutConstraint.activate([
            guestSubButtonStackView.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            guestSubButtonStackView.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            guestSubButtonStackView.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 0.0),
            guestSubButtonStackView.heightAnchor.constraint(equalToConstant: 45.0)
            ])
        
        guestSubButtonStackView.addArrangedSubview(classicGuestSubButton)
        guestSubButtonStackView.addArrangedSubview(vipGuestSubButton)
        guestSubButtonStackView.addArrangedSubview(freeChildSubButton)
        guestSubButtonStackView.addArrangedSubview(seasonPassGuestSubButton)
        guestSubButtonStackView.addArrangedSubview(seniorGuestSubButton)
        
        guestSubButtonStackView.isHidden = true
    
                                                ///EMPLOYEE SUBUTTONS
        
        employeeSubButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        employeeSubButtonStackView.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(employeeSubButtonStackView)
        NSLayoutConstraint.activate([
            employeeSubButtonStackView.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            employeeSubButtonStackView.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            employeeSubButtonStackView.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 0.0),
            employeeSubButtonStackView.heightAnchor.constraint(equalToConstant: 45.0)
            ])
    
        employeeSubButtonStackView.addArrangedSubview(employeeFoodServicesSubButton)
        employeeSubButtonStackView.addArrangedSubview(employeeRideServicesSubButton)
        employeeSubButtonStackView.addArrangedSubview(employeeMaintenanceSubButton)
        employeeSubButtonStackView.addArrangedSubview(contractEmployeeSubButton)
        
        employeeSubButtonStackView.isHidden = true
        
                                                   ///BIRTH/SNN/PROJECT/ LABELS,TEXT FIELDS & LINE
        
        birthSSNProjectStackViewLabels.translatesAutoresizingMaskIntoConstraints = false
        birthSSNProjectStackViewLabels.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(birthSSNProjectStackViewLabels)
        NSLayoutConstraint.activate([
            birthSSNProjectStackViewLabels.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            birthSSNProjectStackViewLabels.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 60.0),
            birthSSNProjectStackViewLabels.heightAnchor.constraint(equalToConstant: 25.0)
            ])
        
        let birthSSNProjectStackViewLabelsTopConstrain = NSLayoutConstraint(item: birthSSNProjectStackViewLabels, attribute: .top, relatedBy: .equal, toItem: employeeSubButtonStackView, attribute: .bottom, multiplier: 1.0, constant: 20.0)
        birthSSNProjectStackViewLabelsTopConstrain.priority = 250.0
        generatePassView.addConstraint(birthSSNProjectStackViewLabelsTopConstrain)
        
        birthSSNProjectStackViewLabels.addArrangedSubview(birthDateLabel)
        birthSSNProjectStackViewLabels.addArrangedSubview(ssnLabel)
        birthSSNProjectStackViewLabels.addArrangedSubview(projectLabel)
        
        birthSSNProjectStackViewTextFields.translatesAutoresizingMaskIntoConstraints = false
        birthSSNProjectStackViewTextFields.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(birthSSNProjectStackViewTextFields)
        NSLayoutConstraint.activate([
            birthSSNProjectStackViewTextFields.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            birthSSNProjectStackViewTextFields.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 60.0),
            birthSSNProjectStackViewTextFields.topAnchor.constraint(equalTo: birthSSNProjectStackViewLabels.bottomAnchor, constant: 10.0),
            birthSSNProjectStackViewTextFields.heightAnchor.constraint(equalToConstant: 45.0)
            ])
    
        birthDateField.frame.size.width = 180.0
        birthSSNProjectStackViewTextFields.addArrangedSubview(birthDateField)
        
        ssnField.frame.size.width = 180.0
        birthSSNProjectStackViewTextFields.addArrangedSubview(ssnField)
        
        projectField.frame.size.width = 180.0
        birthSSNProjectStackViewTextFields.addArrangedSubview(projectField)
        
        birthSSNProjectViewLine.translatesAutoresizingMaskIntoConstraints = false
        birthSSNProjectViewLine.backgroundColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor()
        generatePassView.addSubview(birthSSNProjectViewLine)
        NSLayoutConstraint.activate([
            birthSSNProjectViewLine.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            birthSSNProjectViewLine.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            birthSSNProjectViewLine.topAnchor.constraint(equalTo: birthSSNProjectStackViewTextFields.bottomAnchor, constant: 22.0),
            birthSSNProjectViewLine.heightAnchor.constraint(equalToConstant: 0.5)
            ])
        
                                                   ///FIRST NAME/LAST NAME/ LABELS,TEXT FIELDS & LINE
        
        firstLastNameStackViewLabels.translatesAutoresizingMaskIntoConstraints = false
        firstLastNameStackViewLabels.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(firstLastNameStackViewLabels)
        
        NSLayoutConstraint.activate([
            firstLastNameStackViewLabels.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            firstLastNameStackViewLabels.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 18.0),
            firstLastNameStackViewLabels.topAnchor.constraint(equalTo: birthSSNProjectViewLine.bottomAnchor, constant: 20.0),
            firstLastNameStackViewLabels.heightAnchor.constraint(equalToConstant: 25.0)
            ])
        
        firstLastNameStackViewLabels.addArrangedSubview(firstNameLabel)
        firstLastNameStackViewLabels.addArrangedSubview(lastNameLabel)
        
        firstLastNameStackViewTextFields.translatesAutoresizingMaskIntoConstraints = false
        firstLastNameStackViewTextFields.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(firstLastNameStackViewTextFields)
        NSLayoutConstraint.activate([
            firstLastNameStackViewTextFields.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            firstLastNameStackViewTextFields.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 18.0),
            firstLastNameStackViewTextFields.topAnchor.constraint(equalTo: firstLastNameStackViewLabels.bottomAnchor, constant: 10.0),
            firstLastNameStackViewTextFields.heightAnchor.constraint(equalToConstant: 45.0)
            ])
        
        firstNameField.frame.size.width = 330.0
        firstLastNameStackViewTextFields.addArrangedSubview(firstNameField)
        
        lastNameField.frame.size.width = 330.0
        firstLastNameStackViewTextFields.addArrangedSubview(lastNameField)
        
        firstLastNameViewLine.translatesAutoresizingMaskIntoConstraints = false
        firstLastNameViewLine.backgroundColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor()
        generatePassView.addSubview(firstLastNameViewLine)
        NSLayoutConstraint.activate([
            firstLastNameViewLine.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            firstLastNameViewLine.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            firstLastNameViewLine.topAnchor.constraint(equalTo: firstLastNameStackViewTextFields.bottomAnchor, constant: 20.0),
            firstLastNameViewLine.heightAnchor.constraint(equalToConstant: 0.5)
            ])
        
                                                   ///COMPANY/ LABEL,TEXT FIELD & LINE
        
        companyStackViewLabel.translatesAutoresizingMaskIntoConstraints = false
        generatePassView.addSubview(companyStackViewLabel)
        
        NSLayoutConstraint.activate([
            companyStackViewLabel.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            companyStackViewLabel.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: -18.0),
            companyStackViewLabel.topAnchor.constraint(equalTo: firstLastNameViewLine.bottomAnchor, constant: 20.0),
            companyStackViewLabel.heightAnchor.constraint(equalToConstant: 25.0)
            ])
        companyStackViewLabel.addArrangedSubview(companyLabel)
        
        companyStackViewTextField.translatesAutoresizingMaskIntoConstraints = false
        generatePassView.addSubview(companyStackViewTextField)
        NSLayoutConstraint.activate([
            companyStackViewTextField.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            companyStackViewTextField.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: -18.0),
            companyStackViewTextField.topAnchor.constraint(equalTo: companyStackViewLabel.bottomAnchor, constant: 10.0),
            companyStackViewTextField.heightAnchor.constraint(equalToConstant: 45.0)
            ])
    
        companyStackViewTextField.addArrangedSubview(companyField)
        
        companyViewLine.translatesAutoresizingMaskIntoConstraints = false
        companyViewLine.backgroundColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor()
        generatePassView.addSubview(companyViewLine)
        NSLayoutConstraint.activate([
            companyViewLine.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            companyViewLine.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            companyViewLine.topAnchor.constraint(equalTo: companyStackViewTextField.bottomAnchor, constant: 20.0),
            companyViewLine.heightAnchor.constraint(equalToConstant: 0.5)
            ])
        
                                                    ///PLACE INFO/ LABEL,TEXT FIELD & LINE 
        
        addressStackViewLabel.translatesAutoresizingMaskIntoConstraints = false
        generatePassView.addSubview(addressStackViewLabel)
        NSLayoutConstraint.activate([
            addressStackViewLabel.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            addressStackViewLabel.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: -18.0),
            addressStackViewLabel.topAnchor.constraint(equalTo: companyViewLine.bottomAnchor, constant: 20.0),
            addressStackViewLabel.heightAnchor.constraint(equalToConstant: 25.0)
        ])
        addressStackViewLabel.addArrangedSubview(streetAddressLabel)
        
        addressStackViewTextField.translatesAutoresizingMaskIntoConstraints = false
        generatePassView.addSubview(addressStackViewTextField)
        NSLayoutConstraint.activate([
            addressStackViewTextField.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            addressStackViewTextField.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: -18.0),
            addressStackViewTextField.topAnchor.constraint(equalTo: addressStackViewLabel.bottomAnchor, constant: 10.0),
            addressStackViewTextField.heightAnchor.constraint(equalToConstant: 45.0)
            ])
        
        addressStackViewTextField.addArrangedSubview(streetAddressField)
        
        cityStateZipStackViewLabels.translatesAutoresizingMaskIntoConstraints = false
        cityStateZipStackViewLabels.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(cityStateZipStackViewLabels)
        NSLayoutConstraint.activate([
            cityStateZipStackViewLabels.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            cityStateZipStackViewLabels.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 60.0),
            cityStateZipStackViewLabels.topAnchor.constraint(equalTo: addressStackViewTextField.bottomAnchor, constant: 15.0),
            cityStateZipStackViewLabels.heightAnchor.constraint(equalToConstant: 25.0)
            ])
        
        cityStateZipStackViewLabels.addArrangedSubview(cityLabel)
        cityStateZipStackViewLabels.addArrangedSubview(stateLabel)
        cityStateZipStackViewLabels.addArrangedSubview(zipCodeLabel)
        
        cityStateZipStackViewTextFields.translatesAutoresizingMaskIntoConstraints = false
        cityStateZipStackViewTextFields.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(cityStateZipStackViewTextFields)
        NSLayoutConstraint.activate([
            cityStateZipStackViewTextFields.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            cityStateZipStackViewTextFields.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 60.0),
            cityStateZipStackViewTextFields.topAnchor.constraint(equalTo: cityStateZipStackViewLabels.bottomAnchor, constant: 10.0),
            cityStateZipStackViewTextFields.heightAnchor.constraint(equalToConstant: 45.0)
            ])
        
        cityField.frame.size.width = 180.0
        cityStateZipStackViewTextFields.addArrangedSubview(cityField)
        
        stateField.layer.frame.size.width = 180.0
        cityStateZipStackViewTextFields.addArrangedSubview(stateField)
        
        zipCodeField.layer.frame.size.width = 180.0
        cityStateZipStackViewTextFields.addArrangedSubview(zipCodeField)
        
        cityStateZipViewLine.translatesAutoresizingMaskIntoConstraints = false
        cityStateZipViewLine.backgroundColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor()
        generatePassView.addSubview(cityStateZipViewLine)
        NSLayoutConstraint.activate([
            cityStateZipViewLine.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: -8.0),
            cityStateZipViewLine.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 8.0),
            cityStateZipViewLine.topAnchor.constraint(equalTo: cityStateZipStackViewTextFields.bottomAnchor, constant: 20.0),
            cityStateZipViewLine.heightAnchor.constraint(equalToConstant: 0.5)
            ])
        
                                                     ///NAVIGATE BUTTONS
        
        navigateButtonsStackView.translatesAutoresizingMaskIntoConstraints = false
        navigateButtonsStackView.distribution = UIStackViewDistribution.fillEqually
        generatePassView.addSubview(navigateButtonsStackView)
        NSLayoutConstraint.activate([
            navigateButtonsStackView.leadingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.leadingAnchor, constant: 15.0),
            navigateButtonsStackView.trailingAnchor.constraint(equalTo: generatePassView.layoutMarginsGuide.trailingAnchor, constant: 18.0),
            navigateButtonsStackView.topAnchor.constraint(equalTo: cityStateZipViewLine.bottomAnchor, constant: 35.0),
            navigateButtonsStackView.heightAnchor.constraint(equalToConstant: 50.0),
            ])
        
        let navigateButtonsStackViewTopConstrain = NSLayoutConstraint(item: navigateButtonsStackView, attribute: .bottom, relatedBy: .equal, toItem: generatePassView, attribute: .bottom, multiplier: 1.0, constant: -220.0)
        navigateButtonsStackViewTopConstrain.priority = 500.0
        generatePassView.addConstraint(navigateButtonsStackViewTopConstrain)
    
        generatePassButton.frame.size.width = 330.0
        generatePassButton.layer.cornerRadius = 2.5
        generatePassButton.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        navigateButtonsStackView.addArrangedSubview(generatePassButton)
        
        populateDataButton.frame.size.width = 330.0
        populateDataButton.layer.cornerRadius = 2.5
        populateDataButton.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        navigateButtonsStackView.addArrangedSubview(populateDataButton)
        }
    
                                              ///TRANSFORM TEXT FIELDS ON EDITING
    
    func tranformTextFieldEditBegan(_ senderField: UITextField, _ senderLabel: UILabel) {
        
        switch senderField {
        case senderField:
            senderField.textColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor()
            senderField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            senderField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            senderField.layer.borderWidth = 1.6
            senderField.textColor = ColorSelection.gray(white: 0.35, alpha: 0.9).getColor()
        default:
            break
        }
        
        switch senderLabel {
        case senderLabel:
            senderLabel.textColor = ColorSelection.gray(white: 0.3, alpha: 0.9).getColor()
        default:
            break
        }
    }
    
    func transformTextFieldEditEnd(_ senderField: UITextField) {
        
        switch senderField {
        case senderField:
            senderField.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
            senderField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            senderField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            senderField.layer.borderWidth = 1.3
        default:
            break
        }
        
        switch senderField {
        case birthDateField:
            birthDateLabel.textColor = unMarkedFieldLabelColor
        case firstNameField:
            firstNameLabel.textColor = unMarkedFieldLabelColor
        case lastNameField:
            lastNameLabel.textColor = unMarkedFieldLabelColor
        case companyField:
            companyLabel.textColor = unMarkedFieldLabelColor
        case streetAddressField:
            streetAddressLabel.textColor = unMarkedFieldLabelColor
        case cityField:
            cityLabel.textColor = unMarkedFieldLabelColor
        case stateField:
            stateLabel.textColor = unMarkedFieldLabelColor
        case zipCodeField:
            zipCodeLabel.textColor = unMarkedFieldLabelColor
        case ssnField:
            ssnLabel.textColor = unMarkedFieldLabelColor
        case projectField:
            projectLabel.textColor = unMarkedFieldLabelColor
        default:
            break
        }
    }
                                            ///CHECK FIELDS

    func checkIfRightFieldIsFilled() {
        
        let visitDate = "\(addDateMonth())/\(addDateDay())/\(addDateYear())"
        
        do{
       
            if let birthDate = birthDateField.text, let ssn = ssnField.text, let project = projectField.text, let firstName = firstNameField.text, let lastName = lastNameField.text, let company = companyField.text , let streetAddress = streetAddressField.text, let city = cityField.text, let state = stateField.text, let zipCode = zipCodeField.text {
            
                if classicGuestSubButton.tintColor == markedButtonTitleColor || vipGuestSubButton.tintColor == markedButtonTitleColor {
                    throw PassError.noInformationRequired
                    
                }else if freeChildSubButton.tintColor == markedButtonTitleColor && (birthDateLabel.textColor == markedFieldLabelColor) && birthDate == "" {
                    throw PassError.fillBirthInformationRequired
                    
                }else if (employeeFoodServicesSubButton.tintColor == markedButtonTitleColor || employeeRideServicesSubButton.tintColor == markedButtonTitleColor || employeeMaintenanceSubButton.tintColor == markedButtonTitleColor || managerButton.tintColor == markedButtonTitleColor || seasonPassGuestSubButton.tintColor == markedButtonTitleColor) && (firstNameLabel.textColor == markedFieldLabelColor || lastNameLabel.textColor == markedFieldLabelColor || streetAddressLabel.textColor == markedFieldLabelColor || cityLabel.textColor == markedFieldLabelColor || stateLabel.textColor == markedFieldLabelColor || zipCodeLabel.textColor == markedFieldLabelColor) && (firstName == "" || lastName == "" || streetAddress == "" || city == "" || state == "" || zipCode == "") {
                    throw PassError.fillGuestOrEmployeeInformationRequired
                    
                }else if seniorGuestSubButton.tintColor == markedButtonTitleColor && (birthDateLabel.textColor == markedFieldLabelColor || firstNameLabel.textColor == markedFieldLabelColor || lastNameLabel.textColor == markedFieldLabelColor) && (birthDate == "" || firstName == "" || lastName == "") {
                    throw PassError.fillSeniorGuestInformationRequired
    
                }else if contractEmployeeSubButton.tintColor == markedButtonTitleColor && (birthDateLabel.textColor == markedFieldLabelColor || ssnLabel.textColor == markedFieldLabelColor || projectLabel.textColor == markedFieldLabelColor || firstNameLabel.textColor == markedFieldLabelColor || lastNameLabel.textColor == markedFieldLabelColor || streetAddressLabel.textColor == markedFieldLabelColor || cityLabel.textColor == markedFieldLabelColor || stateLabel.textColor == markedFieldLabelColor || zipCodeLabel.textColor == markedFieldLabelColor) && (birthDate == "" || ssn == "" || project == "" || firstName == "" || lastName == "" || streetAddress == "" || city == "" || state == "" || zipCode == "") {
                    throw PassError.fillContractEmployeeInformationRequired
                  
                }else if vendorButton.tintColor == markedButtonTitleColor && (birthDateLabel.textColor == markedFieldLabelColor || firstNameLabel.textColor == markedFieldLabelColor || lastNameLabel.textColor == markedFieldLabelColor || companyLabel.textColor == markedFieldLabelColor) && (birthDate == "" || firstName == "" || lastName == "" || company == "" || visitDate == "") {
                    throw PassError.fillVendorInformationRequired
                }else{
                    performSegue(withIdentifier: "segue", sender: nil)
                }
            }
        }catch PassError.noInformationRequired {
            showAlertWith(title: "No Personal Info Required", message: "Please Confirm Note")
            
        }catch PassError.fillBirthInformationRequired {
            showAlertWith(title: "Free Child Guest Info Required", message: "Please select FREE CHILD GUEST for requirements")
            
        }catch PassError.fillGuestOrEmployeeInformationRequired {
            showAlertWith(title: "Guest Or Employee Info Required" , message: "Please select GUEST or EMPLOYEE for requirements")
            
        }catch PassError.fillSeniorGuestInformationRequired {
            showAlertWith(title: "Senior Guest Info Required", message: "Please select SENIOR GUEST for requirements")
            
        }catch PassError.fillContractEmployeeInformationRequired {
            showAlertWith(title: "Contract Employee Info Required", message: "Please select CONTRACT EMPLOYEE for requirements")
            
        }catch PassError.fillVendorInformationRequired {
            showAlertWith(title: "Vendor Info Required", message: "Please select VENDOR for requirements")
            
        }catch let error {
            fatalError(error.localizedDescription)
        }
    }
                                            ///POPULATE DATA
   
    func populateData() {
        if classicGuestSubButton.tintColor == markedButtonTitleColor || vipGuestSubButton.tintColor == markedButtonTitleColor {
            checkIfRightFieldIsFilled()
            
        }else if freeChildSubButton.tintColor == markedButtonTitleColor {
            birthDateField.text = "\(addDateMonth())/\(addDateDay())/\(addDateYear())"
            
        }else if employeeFoodServicesSubButton.tintColor == markedButtonTitleColor || employeeRideServicesSubButton.tintColor == markedButtonTitleColor || employeeMaintenanceSubButton.tintColor == markedButtonTitleColor || managerButton.tintColor == markedButtonTitleColor || seasonPassGuestSubButton.tintColor == markedButtonTitleColor {
            firstNameField.text = "First Name"
            lastNameField.text = "Last Name"
            streetAddressField.text = "Some Address"
            cityField.text = "City"
            stateField.text = "State"
            zipCodeField.text = "00000"

            
        }else if seniorGuestSubButton.tintColor == markedButtonTitleColor {
            birthDateField.text = "00/00/0000"
            firstNameField.text = "First Name"
            lastNameField.text = "Last Name"
            
        }else if contractEmployeeSubButton.tintColor == markedButtonTitleColor {
            birthDateField.text = "00/00/0000"
            ssnField.text = "000-00-000"
            projectField.text = "000000"
            firstNameField.text = "First Name"
            lastNameField.text = "Last Name"
            streetAddressField.text = "Some Address"
            cityField.text = "City"
            stateField.text = "State"
            zipCodeField.text = "00000"
            
        }else if vendorButton.tintColor == markedButtonTitleColor {
            birthDateField.text = "00/00/0000"
            firstNameField.text = "First Name"
            lastNameField.text = "Last Name"
            companyField.text = "Company"
        }
        
        if birthDateField.backgroundColor == unMarkedTextFieldColor {
            birthDateField.text = nil
        }
        if ssnField.backgroundColor == unMarkedTextFieldColor {
            ssnField.text = nil
        }
        
        if projectField.backgroundColor == unMarkedTextFieldColor {
            projectField.text = nil
        }
        
        if firstNameField.backgroundColor == unMarkedTextFieldColor {
            firstNameField.text = ""
        }
        
        if lastNameField.backgroundColor == unMarkedTextFieldColor {
            lastNameField.text = ""
        }
        
        if companyField.backgroundColor == unMarkedTextFieldColor {
            companyField.text = ""
        }
        
        if streetAddressField.backgroundColor == unMarkedTextFieldColor {
            streetAddressField.text = ""
        }
        
        if cityField.backgroundColor == unMarkedTextFieldColor {
            cityField.text = ""
        }
        
        if stateField.backgroundColor == unMarkedTextFieldColor {
            stateField.text = ""
        }
        
        if zipCodeField.backgroundColor == unMarkedTextFieldColor {
            zipCodeField.text = ""
        }
    }
                                           ///PREPARE SEQUE
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newPassViewController: NewPassViewController = segue.destination as! NewPassViewController
        
                                           ///ADD CORRECT ENTRANT NAMES
        
        newPassViewController.entrantFirstNameData = "\(firstNameField.text!)"
        newPassViewController.entrantLastNameData = "\(lastNameField.text!)"
        newPassViewController.birthInfo = ""

                                           ///ADD CORRECT ENTRANT TYPE DATA
        
        let allRideData: String = "All rides access"
        let skipRideData: String = "Skip ride lines"
        
        if classicGuestSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = classicGuestSubButton.titleLabel!.text!
            if EntrantType.classicGuest.entrantRideAccess.accessAllRides == true || EntrantType.classicGuest.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            newPassViewController.entrantDiscountFoodData = EntrantType.classicGuest.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.classicGuest.entrantDiscountAccess.discountOnMerchandise
            
        }else if vipGuestSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = vipGuestSubButton.titleLabel!.text!
            if EntrantType.vipGuest.entrantRideAccess.accessAllRides == true || EntrantType.vipGuest.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.vipGuest.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.vipGuest.entrantDiscountAccess.discountOnMerchandise
            
        }else if freeChildSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = freeChildSubButton.titleLabel!.text!
            if EntrantType.freeChildGuest.entrantRideAccess.accessAllRides == true || EntrantType.freeChildGuest.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.freeChildGuest.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.freeChildGuest.entrantDiscountAccess.discountOnMerchandise
            
            if birthDateField.text == "\(addDateMonth())/\(addDateDay())/\(addDateYear())" {
                newPassViewController.birthInfo = "· Dear Guest all the best for BIRTHDAY!!"
            }
            
        }else if seasonPassGuestSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = seasonPassGuestSubButton.titleLabel!.text!
            if EntrantType.seasonPassGuest.entrantRideAccess.accessAllRides == true || EntrantType.seasonPassGuest.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.seasonPassGuest.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.seasonPassGuest.entrantDiscountAccess.discountOnMerchandise
            
        }else if seniorGuestSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = seniorGuestSubButton.titleLabel!.text!
            if EntrantType.seniorGuest.entrantRideAccess.accessAllRides == true || EntrantType.seniorGuest.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.seniorGuest.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.seniorGuest.entrantDiscountAccess.discountOnMerchandise
            
        }else if employeeFoodServicesSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = employeeFoodServicesSubButton.titleLabel!.text!
            if EntrantType.hourlyEmployeeFoodService.entrantRideAccess.accessAllRides == true || EntrantType.hourlyEmployeeFoodService.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.hourlyEmployeeFoodService.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.hourlyEmployeeFoodService.entrantDiscountAccess.discountOnMerchandise
        
        }else if employeeRideServicesSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = employeeRideServicesSubButton.titleLabel!.text!
            if EntrantType.hourlyEmployeeRideService.entrantRideAccess.accessAllRides == true || EntrantType.hourlyEmployeeRideService.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.hourlyEmployeeRideService.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.hourlyEmployeeRideService.entrantDiscountAccess.discountOnMerchandise
            
        }else if employeeMaintenanceSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = employeeMaintenanceSubButton.titleLabel!.text!
            if EntrantType.hourlyEmployeeMaintenance.entrantRideAccess.accessAllRides == true || EntrantType.hourlyEmployeeMaintenance.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.hourlyEmployeeMaintenance.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.hourlyEmployeeMaintenance.entrantDiscountAccess.discountOnMerchandise
        
        }else if contractEmployeeSubButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = contractEmployeeSubButton.titleLabel!.text!
            if EntrantType.contractEmployee.entrantRideAccess.accessAllRides == true || EntrantType.contractEmployee.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.contractEmployee.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.contractEmployee.entrantDiscountAccess.discountOnMerchandise
            
        }else if managerButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = managerButton.titleLabel!.text!
            if EntrantType.manager.entrantRideAccess.accessAllRides == true || EntrantType.manager.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.manager.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.manager.entrantDiscountAccess.discountOnMerchandise

        }else if vendorButton.tintColor == markedButtonTitleColor {
            newPassViewController.entrantTypeData = vendorButton.titleLabel!.text!
            if EntrantType.vendor.entrantRideAccess.accessAllRides == true || EntrantType.vendor.entrantRideAccess.skipAllRideLines == true {
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = skipRideData
            }else{
                newPassViewController.entrantAllRidesData = allRideData
                newPassViewController.entrantSkipRidesData = ""
            }
            
            newPassViewController.entrantDiscountFoodData = EntrantType.vendor.entrantDiscountAccess.discountOnFood
            newPassViewController.entrantDiscountMerchandiseData = EntrantType.vendor.entrantDiscountAccess.discountOnMerchandise
        }
    }
    
                                           ///SET ALERTS///HELPER METHODS


    func showAlertWith(title: String, message: String, style: UIAlertControllerStyle = .alert) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: dismissAlert)
        alertController.addAction(okAction)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func dismissAlert(senders : UIAlertAction) -> Void {
        if classicGuestSubButton.tintColor == ColorSelection.white(white: 1.0, alpha: 1.0).getColor() || vipGuestSubButton.tintColor == ColorSelection.white(white: 1.0, alpha: 1.0).getColor() {
            performSegue(withIdentifier: "segue", sender: nil)
        }
    }
}






















