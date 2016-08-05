//
//  RandomSelector.swift
//  Restaurando
//
//  Created by Brittiny Tran on 7/13/16.
//  Copyright © 2016 Brittiny Tran. All rights reserved.
//

import UIKit

class RandomSelector: UIViewController{
 
    @IBOutlet weak var randomLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var changeMyMindButton: UIButton!
    
    @IBAction func newOption(sender: UIButton) {
        let randomFood = RestaurantTypes(type: "")
        randomLabel.text = randomFood.getTypeRest()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        continueButton.layer.cornerRadius = 10
        changeMyMindButton.layer.cornerRadius = 10
        
        let randomRestaurant = RestaurantTypes(type: "Title is Me!!")
        randomLabel.text = randomRestaurant.getTypeRest()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let identifier = segue.identifier {
            if identifier == "displayRandom" {
                let searchFor = segue.destinationViewController as! LocationViewController
                searchFor.setLocSearchTerm = randomLabel.text!
            }
        }
    }
}
