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
    
    //initiate restaurant type
    init(type: String) {
        self.type = type
    }
    
    static var trash: [RestaurantTypes] = []

    //array of Restaurant types
    static var typeArray = [RestaurantTypes(type: "American"), RestaurantTypes(type: "Italian"),    RestaurantTypes(type: "Barbeque"), RestaurantTypes(type: "Chinese"), RestaurantTypes(type: "Korean"), RestaurantTypes(type: "Mexican"), RestaurantTypes(type: "Tex-Mex"), RestaurantTypes(type: "Japanese"), RestaurantTypes(type: "Seafood"), RestaurantTypes(type: "Steakhouse"), RestaurantTypes(type: "Filipino"), RestaurantTypes(type: "Buffet"), RestaurantTypes(type: "Cajun"), RestaurantTypes(type: "Greek"), RestaurantTypes(type: "Indian"), RestaurantTypes(type: "Mediterranean"), RestaurantTypes(type: "Middle Eastern"), RestaurantTypes(type: "Vietnamese"), RestaurantTypes(type: "Thai")]
    
    //returns a random type of restaurant/food
    func getTypeRest() -> String {
            let randomIndex = Int(arc4random_uniform(UInt32(RestaurantTypes.typeArray.count)))
            if RestaurantTypes.typeArray.count == 0 {
                RestaurantTypes.typeArray = RestaurantTypes.trash
                RestaurantTypes.trash = []
            }
        
            let randomType = RestaurantTypes.typeArray.removeAtIndex(randomIndex)
            RestaurantTypes.trash.append(randomType)
            return randomType.type
    }
    
//    func outOfOptions() -> String {
//        let errorMessage = "Sorry you have ran out of options"
//        if RestaurantTypes.typeArray.count == 0 {
//            print("\(errorMessage)")
//        }
//        return errorMessage
//    }
}

