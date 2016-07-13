//
//  RandomType.swift
//  Restaurando
//
//  Created by Brittiny Tran on 7/13/16.
//  Copyright © 2016 Brittiny Tran. All rights reserved.
//

import Foundation

class RestaurantTypes {
    let type: String
    
    init(type: String) {
        self.type = type
    }

static var typeArray = [RestaurantTypes(type: "American"), RestaurantTypes(type: "Italian"), RestaurantTypes(type: "Sushi"), RestaurantTypes(type: "Chinese"), RestaurantTypes(type: "Korean"), RestaurantTypes(type: "Mexican"), RestaurantTypes(type: "Mediterranean"), RestaurantTypes(type: "Tex-Mex"), RestaurantTypes(type: "Brazilian"), RestaurantTypes(type: "Japanese"), RestaurantTypes(type: "Seafood"), RestaurantTypes(type: "Steakhouse"), RestaurantTypes(type: "Pizzeria"), RestaurantTypes(type: "Buffet")]
    
}

func gettypeRest() -> String {
            let randomIndex = Int(arc4random_uniform(UInt32(RestaurantTypes.typeArray.count)))
            let randomType = RestaurantTypes.typeArray.removeAtIndex(randomIndex)
            return randomType.type
}

