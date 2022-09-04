//
//  HotSales.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import Foundation

struct HotSales: Decodable, Identifiable {
    let id: Int
    let isNew: Bool?
    let title: String
    let subtitle: String
    let picture: String
    let isBuy: Bool
    
    enum CodingKeys: String, CodingKey {
        case id
        case isNew = "is_new"
        case title
        case subtitle
        case picture
        case isBuy = "is_buy"
    }
}

struct HomeStore: Codable {
    let homeStore: [HotSales]
    
    enum CodingKeys: String, CodingKey {
        case homeStore = "home_store"
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
}
