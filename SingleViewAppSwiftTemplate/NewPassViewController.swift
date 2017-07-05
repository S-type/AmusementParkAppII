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
    
    var merchDiscountPassCheck: String = ""
    var foodDiscountPassCheck: String = ""
    var skipRidesPassCheck: String = ""
    var ridesPassCheck: String = ""
    var ridePassCheck: String = ""
    var officePasscheck: String = ""
    var maintenancePassCheck: String = ""
    var kitchenPassCheck: String = ""
    var amusementPassCheck: String = ""
    
                                              ///NEW PASS LABEL
    
    lazy var createNewPassTopLabel: UILabel = {
       let labelNewPass = UILabel()
        labelNewPass.text = "Create New Pass"
        return labelNewPass
    }()
                                              ///ENTRANT PASS INFORMATION LABELS
    
    lazy var entrantImage: UIImage = {
        var imageEntrant = UIImage()
        imageEntrant = #imageLiteral(resourceName: "FaceImageAsset")
        return imageEntrant
    }()
    
    lazy var entrantLabel: UILabel = {
        let labelEntrant = UILabel()
        return labelEntrant
    }()
    
    lazy var entrantTypeLabel: UILabel = {
        let labelTypeEntrant = UILabel()
        return labelTypeEntrant
    }()
    
    lazy var entrantRideLabel: UILabel = {
        let labelRide = UILabel()
        return labelRide
    }()
    
    lazy var entrantSkipLabel: UILabel = {
        let labelSkip = UILabel()
        return labelSkip
    }()
    
    lazy var entrantDiscountFoodLabel: UILabel = {
        let labelDiscountFood = UILabel()
        return labelDiscountFood
    }()
    
    lazy var entrantDiscountMerchadiseLabel: UILabel = {
        let labelDiscountMerchadise = UILabel()
        return labelDiscountMerchadise
    }()
    
                                                ///ACCESS TESTING LABELS
    
    lazy var accessTestingLabel: UILabel = {
        let labelAccess = UILabel()
        labelAccess.text = "Access Testing"
        return labelAccess
        
    }()
    
    lazy var confirmPassLabel: UILabel = {
        let labelConfirm = UILabel()
        labelConfirm.text = "Confirm the pass has the expected level of access when swiped at a kiosk"
        return labelConfirm
    }()
    
    lazy var testResultsLabel: UILabel = {
        let labelTestResults = UILabel()
        labelTestResults.text = "Test Results"
        return labelTestResults
    }()
    
    
                                                ///ACCESS TESTING BUTTONS
    
    lazy var amusementAreaButton: UIButton = {
        let buttonAmusement = UIButton()
        buttonAmusement.setTitle("Amusement", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonAmusement
    }()
    
    lazy var kitchenAreaButton: UIButton = {
        let buttonKitchen = UIButton()
        buttonKitchen.setTitle("Kitchen", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonKitchen
    }()
    
    lazy var maintenanceAreaButton: UIButton = {
        let buttonMaintenance = UIButton()
        buttonMaintenance.setTitle("Maintenance", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonMaintenance
    }()
    
    lazy var officeAreaButton: UIButton = {
        let buttonOffice = UIButton()
        buttonOffice.setTitle("Office", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonOffice
    }()
    
    lazy var rideControlAreaButton: UIButton = {
        let buttonControlArea = UIButton()
        buttonControlArea.setTitle("Ride Control", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonControlArea
    }()
    
    lazy var allRidesButton: UIButton = {
        let buttonAllRides = UIButton()
        buttonAllRides.setTitle("All Rides", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonAllRides
    }()
    
    lazy var skipAllRideLinesButton: UIButton = {
        let buttonSkipLines = UIButton()
        buttonSkipLines.setTitle("Skip Lines", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonSkipLines
    }()
    
    lazy var foodDiscountButton: UIButton = {
        let buttonFoodDiscount = UIButton()
        buttonFoodDiscount.setTitle("Food Discount", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonFoodDiscount
    }()
    
    lazy var merchDiscountButton: UIButton = {
        let buttonMerchDiscount = UIButton()
        buttonMerchDiscount.setTitle("Merch Discount", for: .normal)
        let selector = #selector(checkTestResults)
        return buttonMerchDiscount
        
    }()
    
    lazy var createNewPassButton: UIButton = {
        let buttonCreateNewPass = UIButton()
        buttonCreateNewPass.setTitle("Create New Pass", for: .normal)
        let selector = #selector(dismiss(animated:completion:))
        return buttonCreateNewPass
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

    }
                                            ///SWIPE + ACCESS CONTROL PROTOCOL METHODS

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
    
                                              ///TO CALL ACCESS CONTROL METHOD AND DEFINE ENTRANT TYPE
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
        
        if entrantTypeLabel.text == "Food Service" {
            accessControl(for: .hourlyEmployeeFoodService)
        }
        
        if entrantTypeLabel.text == "Ride Service" {
            accessControl(for: .hourlyEmployeeRideService)
        }
        
        if entrantTypeLabel.text == "Maintenance" {
            accessControl(for: .hourlyEmployeeMaintenance)
        }
        
        if entrantTypeLabel.text == "Manager" {
            accessControl(for: .manager)
        }
    }
                                              ///TEST RESULTS METHOD
    
    func checkTestResults() {

        switch self {
        case amusementAreaButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(amusementPassCheck)"
        case kitchenAreaButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(kitchenPassCheck)"
        case maintenanceAreaButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(maintenancePassCheck)"
        case officeAreaButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(officePasscheck)"
        case rideControlAreaButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(ridePassCheck)"
        case allRidesButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(ridesPassCheck)"
        case skipAllRideLinesButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(skipRidesPassCheck)"
        case foodDiscountButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(foodDiscountPassCheck)"
        case merchDiscountButton:
            prepareAccessControlResults()
            testResultsLabel.text = "\(merchDiscountPassCheck)"
            
        default:break
          
        }
    }
}

































