//
//  Bundle-Decodable.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ url: String) -> T {
        
        guard let url = URL(string: url) else {
            fatalError("Fatal error url is invalid")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Fatal error data is invalid")
        }
        
        let decoder = JSONDecoder()
   
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Fatal error decoded data is invalid")
        }
         
        return decodedData
    }
}
