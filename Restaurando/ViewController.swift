//
//  ViewController.swift
//  Restaurando
//
//  Created by Brittiny Tran on 7/11/16.
//  Copyright © 2016 Brittiny Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var searchTerm = ""
    
    @IBOutlet weak var resultsLabel: UILabel!
  //  var searchTerm: RandomSelector
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Authenticate API Keys
        let client = YLPClient(consumerKey: "hC6Q3AMvXrmnaithktTNcg",
                               consumerSecret: "Vn8UMrw1TWWKfZyQXYAc6JX8rF4",
                               token: "8i2e6oy5rnWhmfuovXsGHzR7GxBSrcO4",
                               tokenSecret: "H50brSTiENoDplboaAgNfOvpmoM")
        
        // Create a dispatch group to wait for search results
        let group = dispatch_group_create()
        dispatch_group_enter(group)
        
        client.searchWithLocation("San Francisco, CA",
                                  currentLatLong: nil,
                                  term: searchTerm,
                                  limit: 5,
                                  offset: 0,
                                  sort: .HighestRated)
        { (search: YLPSearch?, error: NSError?) in
            // When leaving this completion handler, notify that the search finished
            defer {
                dispatch_group_leave(group)
            }
            
            // Check if we received a result; if not, there was an error
            guard let search = search else {
                print("Search errored: \(error)")
                return
            }
            
            let businesses = search.businesses
            print("total: \(search.total) number of biz: \(search.businesses.count)")
            
            for business in businesses {
                print("\(business.name)")
            }

        }
        
        // Wait for the search to complete
        dispatch_group_wait(group, DISPATCH_TIME_FOREVER)

    }
    
    
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

