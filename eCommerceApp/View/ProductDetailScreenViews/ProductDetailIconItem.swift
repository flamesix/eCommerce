//
//  ProductDetailIconItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct ProductDetailIconItem: View {
    
    let mockItem: MockItem
    
    var body: some View {
        HStack {
            VStack {
                Image("cpuLogo")
                Text(mockItem.cpu)
                    .font(.system(size: 11, weight: .regular, design: .default))
                    .foregroundColor(categoryColor)
            }
            
            Spacer()
            
            VStack {
                Image("camLogo")
                Text(mockItem.camera)
                    .font(.system(size: 11, weight: .regular, design: .default))
                    .foregroundColor(categoryColor)
            }
            
            Spacer()
            
            VStack {
                Image("ramLogo")
                Text(mockItem.ram)
                    .font(.system(size: 11, weight: .regular, design: .default))
                    .foregroundColor(categoryColor)
            }
            
            Spacer()
            
            VStack {
                Image("ssdLogo")
                Text(mockItem.ssd)
                    .font(.system(size: 11, weight: .regular, design: .default))
                    .foregroundColor(categoryColor)
            }
        }
        .padding(.horizontal)
    }
}

struct ProductDetailIconItem_Previews: PreviewProvider {
    
    static let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    static var previews: some View {
        ProductDetailIconItem(mockItem: mockItem)
    }
}
