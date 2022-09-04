//
//  MockItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import Foundation

struct MockItem: Codable, Identifiable {
    let id: String
    let cpu: String
    let camera: String
    let capacity: [String]
    let color: [String]
    let images: [String]
    let isFavorite: Bool
    let price: Int
    let rating: Double
    let ssd: String // sd
    let ram: String // ssd
    let title: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case cpu = "CPU"
        case camera
        case capacity
        case color
        case images
        case isFavorite = "isFavorites"
        case price
        case rating
        case ssd = "sd"
        case ram = "ssd"
        case title
    }
    
    func encode(to encoder: Encoder) throws {
        
    }
}
