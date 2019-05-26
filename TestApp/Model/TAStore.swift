//
//  TAStore.swift
//  TestApp
//
//  Created by Krish on 26/05/19.
//  Copyright © 2019 Plexure. All rights reserved.
//

import Foundation

struct TAStore : Decodable {
    let id: Int
    let name: String
    let address: String
    let distance: Int
    let latitude: Decimal
    let longitude: Decimal
    let featureList: [String]
}
