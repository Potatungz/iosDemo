//
//  product.swift
//  Hello
//
//  Created by admin on 25/8/2561 BE.
//  Copyright © 2561 admin. All rights reserved.
//

import Foundation

struct Product: Decodable {
    let id: Int
    let productCode: String
    let productName: String
    let price: String
    let rating: Int?
    let comments: [Comment]
}

//private enum CodingKeys: String, CodingKey {
//    case ProductCode = "product_code"
//    case ProductName, price, rating
//}

struct Comment: Decodable {
    let message: String
}
