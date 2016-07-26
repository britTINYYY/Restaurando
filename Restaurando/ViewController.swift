//
//  ViewController.swift
//  Restaurando
//
//  Created by Brittiny Tran on 7/11/16.
//  Copyright © 2016 Brittiny Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let client = YLPClient(consumerKey: "hC6Q3AMvXrmnaithktTNcg",
                               consumerSecret: "Vn8UMrw1TWWKfZyQXYAc6JX8rF4",
                               token: "8i2e6oy5rnWhmfuovXsGHzR7GxBSrcO4",
                               tokenSecret: "H50brSTiENoDplboaAgNfOvpmoM")
        
        client.searchWithLocation("San Francisco, CA",
                                  currentLatLong: nil,
                                  term: RestaurantTypes(type: "").getTypeRest(),
                                  limit: 20,
                                  offset: 15,
                                  sort: .HighestRated) {
        (search: YLPSearch?, error: NSError?) in
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

