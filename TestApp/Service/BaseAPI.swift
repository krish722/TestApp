//
//  BaseAPI.swift
//  TestApp
//
//  Created by Sundararajan Krishnasamy on 23/9/18.
//  Copyright © 2018 Tipple. All rights reserved.
//

import Foundation
import Alamofire

struct BaseAPI {


    static func executeRequest(api: String, payload: [String: String], completion :  @escaping ((Data) -> Void), exceptionHandler: @escaping ((Error?) -> Void))  {
        let baseURL = URL(string: "https://mopjapaneastgateway.plexure.io/")!
        Alamofire.request(baseURL.appendingPathComponent(api),
                          method: .get,
                          parameters: payload)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success :
                    guard let storeData = response.data else {
                        exceptionHandler(nil)
                        return
                    }
                    completion(storeData)
                case .failure(let error):
                    exceptionHandler(error)
                }
        }
    } 
}
