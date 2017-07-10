//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                                             ///TEXTFIELDS
    
    lazy var birthDateField: UITextField = {
        let fieldBirth = UITextField()
        fieldBirth.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        let month: Int = 0
        let day: Int = 0
        let year: Int = 0
        fieldBirth.text = "\(month)/\(day)/\(year)"
        return fieldBirth
    }()
    
    lazy var snnField: UITextField = {
        let fieldSnn = UITextField()
        fieldSnn.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldSnn
    }()
    
    lazy var projectField: UITextField = {
        let fieldProject = UITextField()
        fieldProject.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldProject
    }()
    
    lazy var firstNameField: UITextField = {
        let fieldFirstName = UITextField()
        fieldFirstName.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldFirstName
        
    }()
    
    lazy var lastNameField: UITextField = {
        let fieldLastName = UITextField()
        fieldLastName.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldLastName
    }()
    
    lazy var companyField: UITextField = {
        let fieldCompany = UITextField()
        fieldCompany.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldCompany
    }()
    
    lazy var streetAddressField: UITextField = {
        let fieldStreetAddress = UITextField()
       fieldStreetAddress.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldStreetAddress
    }()
    
    lazy var cityField: UITextField = {
        let fieldCity = UITextField()
        fieldCity.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldCity
    }()
    
    lazy var stateField: UITextField = {
        let fieldState = UITextField()
        fieldState.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldState
    }()
    
    lazy var zipCodeField: UITextField = {
        let fieldZipCode = UITextField()
        fieldZipCode.backgroundColor = ColorSelection.white(white: 0.6, alpha: 0.8).getColor()
        return fieldZipCode
    }()                                      ///GUEST BUTTONS
    
    lazy var guestButton: UIButton = {
        let buttonGuest = UIButton(type: .system)
        buttonGuest.setTitle("Guest", for: .normal)
        let selector = #selector(showGuestSubButtons)
        return buttonGuest
    }()
    
    lazy var classicGuestSubButton: UIButton = {
        let subButtonClassicGuest = UIButton(type: .system)
        subButtonClassicGuest.isHidden = true
        subButtonClassicGuest.setTitle("Classic", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonClassicGuest
    }()
    
    lazy var vipGuestSubButton: UIButton = {
        let subButtonVipGuest = UIButton(type: .system)
        subButtonVipGuest.isHidden = true
        subButtonVipGuest.setTitle("VIP", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonVipGuest
    }()
    
    lazy var freeChildSubButton: UIButton = {
        let subButtonFreeChild = UIButton(type: .system)
        subButtonFreeChild.isHidden = true
        subButtonFreeChild.setTitle("Free Child", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonFreeChild
    }()
                                           ///EMPLOYEE BUTTONS
    
    lazy var employeeButton: UIButton = {
        let buttonEmployee = UIButton(type: .system)
        buttonEmployee.setTitle("Employee", for: .normal)
        let selector = #selector(showEmployeeSubButtons)
        return buttonEmployee
        
    }()
    
    lazy var employeeFoodServicesSubButton: UIButton = {
        let subButtonEmployeeFoodService = UIButton(type: .system)
        subButtonEmployeeFoodService.isHidden = true
        subButtonEmployeeFoodService.setTitle("Food Service", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonEmployeeFoodService
    }()
    
    lazy var employeeRideServicesSubButton: UIButton = {
        let subButtonEmployeeRideService = UIButton(type: .system)
        subButtonEmployeeRideService.isHidden = true
        subButtonEmployeeRideService.setTitle("Ride Service", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonEmployeeRideService
        
    }()
    
    lazy var employeeMaintenanceSubButton: UIButton = {
        let subButtonEmployeeMaintenance = UIButton(type: .system)
        subButtonEmployeeMaintenance.isHidden = true
        subButtonEmployeeMaintenance.setTitle("Maintenance", for: .normal)
        let selector = #selector(showRequiredField)
        return subButtonEmployeeMaintenance
    }()
    
    lazy var managerButton: UIButton = {
        let managerButton = UIButton(type: .system)
        managerButton.isHidden = true
        managerButton.setTitle("Manager", for: .normal)
        let selector = #selector(showRequiredField)
        return managerButton
        
    }()
                                             ///NAVIGATE BUTTONS
    
    lazy var generatePassButton: UIButton = {
        let passButton = UIButton(type: .system)
        let selector = #selector(checkIfRightFieldIsFilled)
        return passButton
        
    }()
    
    lazy var populateDataButton: UIButton = {
        let dataButton = UIButton(type: .system)
        let selector = #selector(populateData)
        return dataButton
        
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
        
    }
    
                                            ///SHOW SUB BUTTONS METHOD
    
    func showGuestSubButtons() {
        
        classicGuestSubButton.isHidden = false
        vipGuestSubButton.isHidden = false
        freeChildSubButton.isHidden = false
        
        
    }
    
    func showEmployeeSubButtons() {
        employeeFoodServicesSubButton.isHidden = false
        employeeRideServicesSubButton.isHidden = false
        employeeMaintenanceSubButton.isHidden = false
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




















