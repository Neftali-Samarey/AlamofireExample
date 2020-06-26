//
//  ViewController.swift
//  AlamofireExample
//
//  Created by Neftali Samarey on 6/25/20.
//  Copyright © 2020 Neftali Samarey. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        testNetworkCall()
    }
    
    func testNetworkCall() {
        
        let url = URL(string: "https://www.google.com")
        
        AF.request(url!).response { (result) in
            //
            let statusCode = result.response?.statusCode
            if let statusIsValid = statusCode {
                print("Status: \(statusIsValid)")
            }
        }
        
        
    }
    
    
    
    
    
    


}

