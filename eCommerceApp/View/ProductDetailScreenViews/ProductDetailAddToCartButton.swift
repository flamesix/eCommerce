//
//  ProductDetailAddToCartButton.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct ProductDetailAddToCartButton: View {
    
    let mockItem: MockItem
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                HStack {
                    Spacer()
                    Text("Add to Cart")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Spacer()
//                    Text("$\(mockItem.price)")
                    Text(mockItem.price.formatted(.currency(code: "USD")))
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .padding()
            .background(orangeColor)
            .cornerRadius(10)
        }
        .padding(.horizontal)

    }
}

struct ProductDetailAddToCartButton_Previews: PreviewProvider {
    
    static let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    static var previews: some View {
        ProductDetailAddToCartButton(mockItem: mockItem)
    }
}
