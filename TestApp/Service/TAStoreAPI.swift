//
//  TAStoreAPI.swift
//  TestApp
//
//  Created by Krish on 26/05/19.
//  Copyright © 2019 Plexure. All rights reserved.
//

import Foundation

struct TAStoreAPI {
    static func decodeJson(_ data: Data) -> [TAStore]? {
        let decoder = JSONDecoder()
        do {
            let stores = try decoder.decode([TAStore].self, from: data)
            return stores
        }
        catch {
            print("parsing error:  \(error)")
        }
        return nil
    }
    static func getStores(onSuccess successCallback: @escaping (([TAStore]) -> Void),
                  onFailure failureCallback: @escaping ((String?) -> Void)
        )  {
        let path = "store/v2/stores"
        let param: [String:String] = ["latitude":"26.333351598841787",
                                      "longitude": "127.79896146273005",
                                      "radius":"100000000",
                                      "size": "100"]

        BaseAPI.executeRequest(api: path, payload: param, completion: {  storesJSON in
            
              guard  let stores = self.decodeJson(storesJSON) else {
                    failureCallback("Filed to format JSON")
                    return
            }
            successCallback(stores)
        }, exceptionHandler: { err in
            failureCallback(err?.localizedDescription)
        })
    }
}
