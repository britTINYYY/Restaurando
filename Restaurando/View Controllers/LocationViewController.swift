//
//  LocationViewController.swift
//  Restaurando
//
//  Created by Brittiny Tran on 7/29/16.
//  Copyright © 2016 Brittiny Tran. All rights reserved.
//
//
import UIKit
import Foundation

class LocationViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var continueOnButton: UIButton!
    
    var setLocSearchTerm = ""
    override func viewDidLoad() {
        super.viewDidLoad()
            self.hideKeyboardWhenTappedAround()
        continueOnButton.layer.cornerRadius = 10
        }
        // Do any additional setup after loading the view.

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "setLocation" {
                let city = cityTextField.text
                let state = stateTextField.text
                
                let userLocation = ("\(city), \(state)")
                let setLoc = segue.destinationViewController as! ResultsViewController
                setLoc.searchTerm = setLocSearchTerm
                setLoc.userLoc = userLocation
            }
        }
    }
}


extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

