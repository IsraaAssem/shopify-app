//
//  CurrencyManager.swift
//  ShopifyApp
//
//  Created by Youssef Waleed on 10/06/2024.
//

import Foundation

struct CurrencyManager {
    
    static var currencies: [String: Double] = [:]
    static var currency = UserDefaults.standard.value(forKey: "currency") as? String ?? "USD" {
        didSet {
            UserDefaults.standard.set(currency, forKey: "currency")
        }
    }
    static var value: Double = 1.0
    
    private init() {}
    
}
