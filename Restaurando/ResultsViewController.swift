//
//  ViewController.swift
//  Restaurando
//
//  Created by Brittiny Tran on 7/11/16.
//  Copyright © 2016 Brittiny Tran. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var searchTerm = ""
    var userLoc = ""
    
    
    @IBOutlet weak var resultsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Authenticate API Keys
        let client = YLPClient(consumerKey: "hC6Q3AMvXrmnaithktTNcg",
                               consumerSecret: "Vn8UMrw1TWWKfZyQXYAc6JX8rF4",
                               token: "8i2e6oy5rnWhmfuovXsGHzR7GxBSrcO4",
                               tokenSecret: "H50brSTiENoDplboaAgNfOvpmoM")

        
        client.searchWithLocation(userLoc,
                                  currentLatLong: nil,
                                  term: searchTerm,
                                  limit: 5,
                                  offset: 0,
                                  sort: .HighestRated)
        { (search: YLPSearch?, error: NSError?) in
                    
            // Check if we received a result; if not, there was an error
            guard let search = search else {
                print("Search errored: \(error)")
                return
            }
            
            let businesses = search.businesses
            var listOfBusinesses = ""
            for business in businesses {
                
                listOfBusinesses += (business.name) + "\r\n"
                
                }
            
            dispatch_async(dispatch_get_main_queue(), {
                self.resultsLabel.text = listOfBusinesses
            })
        }
        
    }
    
}

