//
//  ViewController.swift
//  IMReactiveTextField
//
//  Created by Iván Alejandro Moya Quilodrán on 15-05-17.
//  Copyright © 2017 Iván Alejandro Moya Quilodrán. All rights reserved.
//

import UIKit
import ReactiveSwift
import ReactiveCocoa
import Result

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: ReactiveValidateTextField!
    @IBOutlet weak var passTextField: ReactiveValidateTextField!
    @IBOutlet weak var enableButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    let signalEmail = emailTextField.signalReactiveTextField(typeCondition: .JLConditionTypeEmail)
    let signalPass = passTextField.signalReactiveTextField(typeCondition: .JLConditionTypeAlphaNumeric)
    
        
     _ = Signal.combineLatest(signalEmail, signalPass)
        .map({ (emailCondition,passCondition) -> Bool in
            
            print("\(emailCondition) \(passCondition)")
            return  emailCondition && passCondition})
        .observeResult({ (response) in
            self.enableButton.isEnabled = response.value!})
        .flatMap { (disponseResult) -> Bool? in
            self.enableButton.isEnabled = disponseResult.isDisposed
            return disponseResult.isDisposed

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

