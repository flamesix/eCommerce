//
//  ProductDetailDescriptionView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct ProductDetailDescriptionView: View {
    
    let mockItem: MockItem
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.white)
                .frame(maxWidth: 390, maxHeight: 400)
                .shadow(radius: 10)
            
            VStack {
                HStack {
                    Text(mockItem.title)
                        .font(.system(size: 24, weight: .medium, design: .default))
                    
                    Spacer()
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 37, height: 37)
                            .foregroundColor(darkColor)
                        Image(systemName: mockItem.isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(.white)
                    }
                }
                .padding()
                
                HStack {
                    Text("Shop")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .underline(true, color: orangeColor)
                    
                    Spacer()
                    
                    Text("Details")
                        .font(.system(size: 20, weight: .regular, design: .default))
                        .foregroundColor(priceColor)
                    
                    Spacer()
                    
                    Text("Features")
                        .font(.system(size: 20, weight: .regular, design: .default))
                        .foregroundColor(priceColor)
                }
                .padding(.horizontal)
                
                ProductDetailIconItem(mockItem: mockItem)
                
                HStack {
                    Text("Select color and capacity")
                        .font(.system(size: 16, weight: .medium, design: .default))
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top)
                
                ProductDetailColorCapacityItem(mockItem: mockItem)
                
                ProductDetailAddToCartButton(mockItem: mockItem)
            }
        }
    }
}

struct ProductDetailDescriptionView_Previews: PreviewProvider {
    
    static let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    static var previews: some View {
        ProductDetailDescriptionView(mockItem: mockItem)
            .previewLayout(.sizeThatFits)
    }
}
