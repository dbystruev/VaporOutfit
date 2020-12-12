//
//  Item.swift
//  
//
//  Created by Denis Bystruev on 12.12.2020.
//

import Vapor

struct Item: Content {
    // MARK: - Properties
    /// Item's category id
    let categoryId: Int?
    
    /// Item's name
    let name: String?
    
    /// The collection of URLs to load item images from
    let pictures: [URL]?
    
    /// The item's current price
    let price: Double?
    
    /// The item URL to purchase
    let url: URL?
    
    /// The item vendor
    let vendor: String?
}
