//
//  calculateWage.swift
//  window-shopper
//
//  Created by Kareem Ismail on 8/6/17.
//  Copyright © 2017 Whatever. All rights reserved.
//

import Foundation

class calculateHours {
    class func calculateHours(forWage wage: Double, andPrice price:Double) -> Int{
        return Int(ceil(price / wage))
    }
}
