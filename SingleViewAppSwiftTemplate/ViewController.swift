//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
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

                                             ///TEXTFIELDS
    
    lazy var birthDateField: UITextField = {
        let fieldBirth = UITextField()
        let month: Int = 0
        let day: Int = 0
        let year: Int = 0
        fieldBirth.text = "\(month)/\(day)/\(year)"
        
        fieldBirth.layer.borderWidth = 1.3
        fieldBirth.layer.cornerRadius = 2.5
        fieldBirth.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldBirth.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldBirth.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldBirth
    }()
    
    lazy var birthDateLabel: UILabel = {
        let labelBirth = UILabel()
        labelBirth.textColor = ColorSelection.gray(white: 0.5, alpha: 1.0).getColor()
        labelBirth.text = "Date of Birth"
        return labelBirth
    }()
    
    lazy var snnField: UITextField = {
        let fieldSnn = UITextField()
        
        fieldSnn.layer.borderWidth = 1.3
        fieldSnn.layer.cornerRadius = 2.5
        fieldSnn.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldSnn.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldSnn.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldSnn
    }()
    
    lazy var snnLabel: UILabel = {
        let labelSnn = UILabel()
        labelSnn.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelSnn.text = "SSN"
        return labelSnn
    }()
    
    lazy var projectField: UITextField = {
        let fieldProject = UITextField()
        
        fieldProject.layer.borderWidth = 1.3
        fieldProject.layer.cornerRadius = 2.5
        fieldProject.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldProject.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldProject.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldProject
    }()
    
    lazy var projectLabel: UILabel = {
        let labelProject = UILabel()
        labelProject.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelProject.text = "Project#"
        return labelProject
    }()
    
    lazy var firstNameField: UITextField = {
        let fieldFirstName = UITextField()
        
        fieldFirstName.layer.borderWidth = 1.3
        fieldFirstName.layer.cornerRadius = 2.5
        fieldFirstName.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldFirstName.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldFirstName.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldFirstName
        
    }()
    
    lazy var firstNameLabel: UILabel = {
        let labelFirstName = UILabel()
        labelFirstName.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelFirstName.text = "First Name"
        return labelFirstName
        
    }()
    
    lazy var lastNameField: UITextField = {
        let fieldLastName = UITextField()
        
        fieldLastName.layer.borderWidth = 1.3
        fieldLastName.layer.cornerRadius = 2.5
        fieldLastName.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldLastName.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldLastName.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldLastName
    }()
    
    lazy var lastNameLabel: UILabel = {
        let labelLastName = UILabel()
        labelLastName.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelLastName.text = "Last Name"
        return labelLastName
    }()
    
    lazy var companyField: UITextField = {
        let fieldCompany = UITextField()
        
        fieldCompany.layer.borderWidth = 1.3
        fieldCompany.layer.cornerRadius = 2.5
        fieldCompany.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldCompany.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldCompany.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldCompany
    }()
    
    lazy var companyLabel: UILabel = {
        let labelCompany = UILabel()
        labelCompany.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelCompany.text = "Company"
        return labelCompany
    }()
    
    lazy var streetAddressField: UITextField = {
        let fieldStreetAddress = UITextField()
        
        fieldStreetAddress.layer.borderWidth = 1.3
        fieldStreetAddress.layer.cornerRadius = 2.5
        fieldStreetAddress.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldStreetAddress.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldStreetAddress.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldStreetAddress
    }()
    
    lazy var streetAddressLabel: UILabel = {
        let labelStreetAddress = UILabel()
        labelStreetAddress.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelStreetAddress.text = "Street Address"
        return labelStreetAddress
    }()
    
    lazy var cityField: UITextField = {
        let fieldCity = UITextField()
        
        fieldCity.layer.borderWidth = 1.3
        fieldCity.layer.cornerRadius = 2.5
        fieldCity.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldCity.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldCity.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldCity
    }()
    
    lazy var cityLabel: UILabel = {
        let labelCity = UILabel()
        labelCity.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelCity.text = "City"
        return labelCity
    }()
    
    lazy var stateField: UITextField = {
        let fieldState = UITextField()
        
        fieldState.layer.borderWidth = 1.3
        fieldState.layer.cornerRadius = 2.5
        fieldState.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldState.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldState.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldState
    }()
    
    lazy var stateLabel: UILabel = {
        let labelState = UILabel()
        labelState.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelState.text = "State"
        return labelState
    }()
    
    lazy var zipCodeField: UITextField = {
        let fieldZipCode = UITextField()
        
        fieldZipCode.layer.borderWidth = 1.3
        fieldZipCode.layer.cornerRadius = 2.5
        fieldZipCode.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
        fieldZipCode.addTarget(self, action: #selector(ViewController.tranformTextFieldEditBegan), for: .editingDidBegin)
        fieldZipCode.addTarget(self, action: #selector(ViewController.transformTextFieldEditEnd), for: .editingDidEnd)
        return fieldZipCode
    }()
    
    lazy var zipCodeLabel: UILabel = {
        let labelZipCode = UILabel()
        labelZipCode.textColor = ColorSelection.gray(white: 0.5, alpha: 0.9).getColor()
        labelZipCode.text = "Zip Code"
        return labelZipCode
    }()
                                            ///GUEST BUTTONS
    
    lazy var guestButton: UIButton = {
        let buttonGuest = UIButton(type: .system)
        buttonGuest.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonGuest.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        buttonGuest.setTitle("Guest", for: .normal)
        buttonGuest.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        return buttonGuest
    }()
    
    lazy var classicGuestSubButton: UIButton = {
        let subButtonClassicGuest = UIButton(type: .system)
        subButtonClassicGuest.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonClassicGuest.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonClassicGuest.setTitle("Classic", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonClassicGuest
    }()
    
    lazy var vipGuestSubButton: UIButton = {
        let subButtonVipGuest = UIButton(type: .system)
        subButtonVipGuest.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonVipGuest.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonVipGuest.setTitle("VIP", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonVipGuest
    }()
    
    lazy var freeChildSubButton: UIButton = {
        let subButtonFreeChild = UIButton(type: .system)
        subButtonFreeChild.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonFreeChild.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonFreeChild.setTitle("Free Child", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonFreeChild
    }()
    
    lazy var seasonPassGuestSubButton: UIButton = {
        let subButtonSeasonGuest = UIButton(type: .system)
        subButtonSeasonGuest.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonSeasonGuest.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonSeasonGuest.setTitle("Season Pass Guest", for: .normal)
        return subButtonSeasonGuest
    }()
    
    lazy var seniorGuestSubButton: UIButton = {
        let subButtonSenior = UIButton(type: .system)
        subButtonSenior.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonSenior.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonSenior.setTitle("Senior Guest", for: .normal)
        return subButtonSenior
        
    }()
                                           ///EMPLOYEE BUTTONS
    
    lazy var employeeButton: UIButton = {
        let buttonEmployee = UIButton(type: .system)
        buttonEmployee.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonEmployee.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        buttonEmployee.setTitle("Employee", for: .normal)
        buttonEmployee.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        return buttonEmployee
        
    }()
    
    lazy var employeeFoodServicesSubButton: UIButton = {
        let subButtonEmployeeFoodService = UIButton(type: .system)
        subButtonEmployeeFoodService.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonEmployeeFoodService.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonEmployeeFoodService.setTitle("Food Service", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonEmployeeFoodService
    }()
    
    lazy var employeeRideServicesSubButton: UIButton = {
        let subButtonEmployeeRideService = UIButton(type: .system)
        subButtonEmployeeRideService.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonEmployeeRideService.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonEmployeeRideService.setTitle("Ride Service", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonEmployeeRideService
        
    }()
    
    lazy var employeeMaintenanceSubButton: UIButton = {
        let subButtonEmployeeMaintenance = UIButton(type: .system)
        subButtonEmployeeMaintenance.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonEmployeeMaintenance.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonEmployeeMaintenance.setTitle("Maintenance", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonEmployeeMaintenance
    }()
    
    lazy var contractEmployeeSubButton: UIButton = {
        let subButtonContractEmployee = UIButton(type: .system)
        subButtonContractEmployee.backgroundColor = ColorSelection.purple(red: 0.16, green: 0.12, blue: 0.22, alpha: 0.9).getColor()
        subButtonContractEmployee.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        subButtonContractEmployee.setTitle("Contract Employee", for: .normal)
        return subButtonContractEmployee
    }()
    
    lazy var managerButton: UIButton = {
        let buttonManager = UIButton(type: .system)
        buttonManager.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonManager.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        buttonManager.setTitle("Manager", for: .normal)
        buttonManager.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        return buttonManager
        
    }()
    
    lazy var vendorButton: UIButton = {
        let buttonVendor = UIButton(type: .system)
        buttonVendor.backgroundColor = ColorSelection.purple(red: 0.50, green: 0.40, blue: 0.60, alpha: 0.9).getColor()
        buttonVendor.tintColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
        buttonVendor .setTitle("Vendor", for: .normal)
        buttonVendor.addTarget(self, action: #selector(ViewController.showCorrectSubButtons), for: .touchUpInside)
        return buttonVendor
    }()
    
                                             ///NAVIGATE BUTTONS
    
    lazy var generatePassButton: UIButton = {
        let passButton = UIButton(type: .system)
        passButton.backgroundColor = ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor()
        passButton.setTitleColor(ColorSelection.gray(white: 0.9, alpha: 1.0).getColor(), for: .normal)
        passButton.setTitle("Generate Pass", for: .normal)
        let selector = #selector(checkIfRightFieldIsFilled)
        return passButton
    }()
    
    lazy var populateDataButton: UIButton = {
        let dataButton = UIButton(type: .system)
        dataButton.backgroundColor = ColorSelection.gray(white: 0.9, alpha: 1.0).getColor()
        dataButton.setTitleColor(ColorSelection.green(red: 0.15, green: 0.55, blue: 0.52, alpha: 0.8).getColor(), for: .normal)
        dataButton.setTitle("Populate Data", for: .normal)
        let selector = #selector(populateData)
        return dataButton
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = ColorSelection.gray(white: 0.9, alpha: 0.9).getColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
        
    }
    
                                             ///POPULATE DATA
    func populateData() {
        
        let birthDate = addDate()
        birthDateField.text = "\(birthDate)"
        firstNameField.text = "First Name"
        lastNameField.text = "Last Name"
    }
    
    
                                            ///SHOW REQUIRED FIELD METHOD
    
    func showRequiredField()  {
        
        if employeeFoodServicesSubButton.isSelected || employeeRideServicesSubButton.isSelected || employeeMaintenanceSubButton.isSelected || managerButton.isSelected{
            firstNameField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            lastNameField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            streetAddressField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            cityField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            stateField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            zipCodeField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            
        }else if freeChildSubButton.isSelected {
            birthDateField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            
        }else{
            print("No personal information required")
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
        birthSSNProjectStackViewLabels.addArrangedSubview(snnLabel)
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
        
        snnField.frame.size.width = 180.0
        birthSSNProjectStackViewTextFields.addArrangedSubview(snnField)
        
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
    
                                             ///SHOW CORRECT SUBUTTONS
    
    func showCorrectSubButtons() {
        if guestButton.isHighlighted {
            employeeSubButtonStackView.isHidden = true
            guestSubButtonStackView.isHidden = false
        }else if employeeButton.isHighlighted {
            guestSubButtonStackView.isHidden = true
            employeeSubButtonStackView.isHidden = false
        }else if managerButton.isHighlighted || vendorButton.isHighlighted {
            guestSubButtonStackView.isHidden = true
            employeeSubButtonStackView.isHidden = true
        }
    }
    
    func tranformTextFieldEditBegan(_ sender: UITextField) {
        
        
        switch sender {
        case birthDateField:
            birthDateField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            birthDateField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            birthDateField.layer.borderWidth = 1.6
        case snnField:
            snnField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            snnField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            snnField.layer.borderWidth = 1.6
        case projectField:
            projectField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            projectField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            projectField.layer.borderWidth = 1.6
        case firstNameField:
            firstNameField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            firstNameField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            firstNameField.layer.borderWidth = 1.6
        case lastNameField:
            lastNameField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            lastNameField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            lastNameField.layer.borderWidth = 1.6
        case companyField:
            companyField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            companyField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            companyField.layer.borderWidth = 1.6
        case streetAddressField:
            streetAddressField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            streetAddressField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            streetAddressField.layer.borderWidth = 1.6
        case cityField:
            cityField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            cityField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            cityField.layer.borderWidth = 1.6
        case stateField:
            stateField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            stateField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            stateField.layer.borderWidth = 1.6
        case zipCodeField:
            zipCodeField.backgroundColor = ColorSelection.white(white: 1.0, alpha: 1.0).getColor()
            zipCodeField.layer.borderColor = ColorSelection.gray(white: 0.6, alpha: 1.0).getColor().cgColor
            zipCodeField.layer.borderWidth = 1
        default:
            break
        }
    }
    
    func transformTextFieldEditEnd(_ sender: UITextField) {
        
        switch sender {
        case birthDateField:
            birthDateField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            birthDateField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            birthDateField.layer.borderWidth = 1.3
        case snnField:
            snnField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            snnField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            snnField.layer.borderWidth = 1.3
        case projectField:
            projectField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            projectField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            projectField.layer.borderWidth = 1.3
        case firstNameField:
            firstNameField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            firstNameField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            firstNameField.layer.borderWidth = 1.3
        case lastNameField:
            lastNameField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            lastNameField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            lastNameField.layer.borderWidth = 1.3
        case companyField:
            companyField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            companyField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            companyField.layer.borderWidth = 1.3
        case streetAddressField:
            streetAddressField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            streetAddressField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            streetAddressField.layer.borderWidth = 1.3
        case cityField:
            cityField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            cityField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            cityField.layer.borderWidth = 1.3
        case stateField:
            stateField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            stateField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            stateField.layer.borderWidth = 1.3
        case zipCodeField:
            zipCodeField.backgroundColor = ColorSelection.purple(red: 0.81 , green: 0.80, blue: 0.83, alpha: 1.0).getColor()
            zipCodeField.layer.borderColor = ColorSelection.gray(white: 0.7, alpha: 0.9).getColor().cgColor
            zipCodeField.layer.borderWidth = 1.3
        default:
            break
        }
    }
    
    
    
    
    
    
    
    
    
    
                                            ///CHECK FIELDS METHOD

    func checkIfRightFieldIsFilled() {
        
        do{
       
        if let firstName = firstNameField.text, let lastName = lastNameField.text, let streetAddress = streetAddressField.text, let city = cityField.text, let state = stateField.text, let zipCode = zipCodeField.text, let birthDate = birthDateField.text {
            
            if firstName == "" && lastName == "" && streetAddress == "" && city == "" && state == "" && zipCode == "" && (employeeFoodServicesSubButton.isSelected || employeeRideServicesSubButton.isSelected || employeeMaintenanceSubButton.isSelected || managerButton.isSelected) {
                throw PassError.filledInformationRequired
            
            }else if birthDate == "" && (freeChildSubButton.isSelected) {
                throw PassError.filledBirthInformationRequired
            }else{
                performSegue(withIdentifier: "segue", sender: nil)
           }
            
        }
    
        }catch PassError.filledInformationRequired {
            let alertController = UIAlertController(title: "Information Required", message: "Please fill required information", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(alertAction)
            
            print(alertController)
            
        }catch PassError.filledBirthInformationRequired {
            let alertControllerI = UIAlertController(title: "Birth Information Required", message: "Please fill birth information", preferredStyle: .alert)
            let alertActionI = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertControllerI.addAction(alertActionI)
            
            print(alertControllerI)
    
        }catch let error {
            fatalError(error.localizedDescription)
        }
    }
    
                                           ///PREPARE SEQUE
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newPassViewController: NewPassViewController = segue.destination as! NewPassViewController
        
                                           ///ADD CORRECT ENTRANT NAMES
        
        newPassViewController.entrantFirstNameData = "\(String(describing: firstNameField.text))"
        newPassViewController.entrantLastNameData = "\(String(describing: lastNameField.text))"

                                           ///ADD CORRECT ENTRANT TYPE DATA
        
        let allRideData: String = "All rides access"
        let skipRideData: String = "Skip ride lines"
        
        if classicGuestSubButton.isHighlighted{
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
            
        }else if vipGuestSubButton.isHighlighted{
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
            
        }else if freeChildSubButton.isHighlighted{
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
            
            let birthDate = addDate()
            if birthDateField.text == birthDate {
                newPassViewController.birthInfo = "Dear Guest,all the best for your SPECIAL DAY in our Park"
            }
        }
        if employeeFoodServicesSubButton.isHighlighted{
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
        
        }else if employeeRideServicesSubButton.isHighlighted{
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
            
        }else if employeeMaintenanceSubButton.isHighlighted{
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
        }
        
        
        if managerButton.isHighlighted {
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

        }
    }
    
    
    func addDate() -> String {
        let date = Date()
        let calendar = Calendar.current
        let month = calendar.component(.month, from: date)
        let day = calendar.component(.day, from: date)
        let year = calendar.component(.year, from: date)
        return "\(month)/\(day)/\(year)"
    }
    
}




















