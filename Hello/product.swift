//
//  product.swift
//  Hello
//
//  Created by admin on 25/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import Foundation

struct Product: Decodable {
    let productCode: String
    let productName: String
    let price: String
    let rating: Int?
    let comments: [Comment]
}

struct Comment: Decodable {
    let message: String
}
