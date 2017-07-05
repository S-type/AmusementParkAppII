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
        fieldBirth.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldBirth
    }()
    
    lazy var snnField: UITextField = {
        let fieldSnn = UITextField()
        fieldSnn.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldSnn
    }()
    
    lazy var projectField: UITextField = {
        let fieldProject = UITextField()
        fieldProject.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldProject
    }()
    
    lazy var firstNameField: UITextField = {
        let fieldFirstName = UITextField()
        fieldFirstName.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldFirstName
        
    }()
    
    lazy var lastNameField: UITextField = {
        let fieldLastName = UITextField()
        fieldLastName.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldLastName
    }()
    
    lazy var companyField: UITextField = {
        let fieldCompany = UITextField()
        fieldCompany.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldCompany
    }()
    
    lazy var streetAddressField: UITextField = {
        let fieldStreetAddress = UITextField()
       fieldStreetAddress.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldStreetAddress
    }()
    
    lazy var cityField: UITextField = {
        let fieldCity = UITextField()
        fieldCity.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldCity
    }()
    
    lazy var stateField: UITextField = {
        let fieldState = UITextField()
        fieldState.backgroundColor = UIColor(white: 0, alpha: 0)
        return fieldState
    }()
    
    lazy var zipCodeField: UITextField = {
        let fieldZipCode = UITextField()
        fieldZipCode.backgroundColor = UIColor(white: 0, alpha: 0)
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
    
    lazy var populateDateButton: UIButton = {
        let dateButton = UIButton(type: .system)
        return dateButton
        
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
    
    
                                            ///SHOW REQUIRED FIELD METHOD
    
    func showRequiredField()  {
        
        if employeeFoodServicesSubButton.isSelected || employeeRideServicesSubButton.isSelected || employeeMaintenanceSubButton.isSelected || managerButton.isSelected{
            firstNameField.backgroundColor = UIColor(white: 10, alpha: 10)
            lastNameField.backgroundColor = UIColor(white: 10, alpha: 10)
            streetAddressField.backgroundColor = UIColor(white: 10, alpha: 10)
            cityField.backgroundColor = UIColor(white: 10, alpha: 10)
            stateField.backgroundColor = UIColor(white: 10, alpha: 10)
            zipCodeField.backgroundColor = UIColor(white: 10, alpha: 10)
            
        }else if freeChildSubButton.isSelected {
            birthDateField.backgroundColor = UIColor(white: 10, alpha: 10)
            
        }else{
            print("No personal information required")
        }
        
    }
                                            ///CHECK FIELDS METHOD

    
    func checkIfRightFieldIsFilled() {
        
        do{
       
        if let firstName = firstNameField.text, let lastName = lastNameField.text, let streetAddress = streetAddressField.text, let city = cityField.text, let state = stateField.text, let zipCode = zipCodeField.text, let birthDate = birthDateField.text {
            
            if firstName == "" && lastName == "" && streetAddress == "" && city == "" && state == "" && zipCode == "" {
                throw PassError.filledInformationRequired
            
            }else if birthDate == "" {
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
            
        }else{
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
            
        }else{
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
}




















