//
//  BestSeller.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import Foundation

struct BestSeller: Decodable, Identifiable {
    let id: Int
    let isFavorite: Bool
    let title: String
    let fullPrice: Int
    let salePrice: Int
    let picture: String
    var isLiked: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id
        case isFavorite = "is_favorites"
        case title
        case fullPrice = "price_without_discount"
        case salePrice = "discount_price"
        case picture
    }
}

struct BestSellerContainer: Codable {
    let bestSeller: [BestSeller]
    
    enum CodingKeys: String, CodingKey {
        case bestSeller = "best_seller"
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
}
