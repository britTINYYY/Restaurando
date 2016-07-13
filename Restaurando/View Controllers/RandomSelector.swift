//
//  RandomSelector.swift
//  Restaurando
//
//  Created by Brittiny Tran on 7/13/16.
//  Copyright © 2016 Brittiny Tran. All rights reserved.
//

import UIKit

class RandomSelector: UIViewController {
 
    @IBOutlet weak var randomLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomRestaurant = RestaurantTypes(type: "Title is Me!!")
        randomLabel.text = randomRestaurant.getTypeRest() + "!"
    }
}
