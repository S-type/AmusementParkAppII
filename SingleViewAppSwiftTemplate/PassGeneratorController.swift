//
//  PassGeneratorController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Stipe Vucemilovic on 6/13/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import UIKit

class PassGeneratorController: UIViewController {
    
                                          ///CREATING TEXTFIELDS
    
    lazy var birthDate: UITextField = {
        let birthField = UITextField()
        return birthField
    }()
    
    lazy var snn: UITextField = {
        let snnField = UITextField()
        return snnField
    }()
    
    lazy var project: UITextField = {
        let projectField = UITextField()
        return projectField
    }()
    
    lazy var firstName: UITextField = {
        let firstNameField = UITextField()
        return firstNameField
        
    }()
    
    lazy var lastName: UITextField = {
        let lastNameField = UITextField()
        return lastNameField
    }()
    
    lazy var company: UITextField = {
        let companyField = UITextField()
        return companyField
    }()
    
    lazy var streetAddress: UITextField = {
        let streetAddressField = UITextField()
        return streetAddressField
    }()
    
    lazy var city: UITextField = {
        let cityField = UITextField()
        return cityField
    }()
    
    lazy var state: UITextField = {
        let stateField = UITextField()
        return stateField
    }()
    
    lazy var zipCode: UITextField = {
        let zipCodeField = UITextField()
        return zipCodeField
    }()
                                        ///CREATING BUTTONS
    
    
    lazy var generatePassButton: UIButton = {
        let passButton = UIButton(type: .system)
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
    
    }
