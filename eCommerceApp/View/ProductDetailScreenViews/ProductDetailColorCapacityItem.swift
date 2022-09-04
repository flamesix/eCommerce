//
//  ProductDetailColorCapacityItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct ProductDetailColorCapacityItem: View {
    
    let mockItem: MockItem
    
    var body: some View {
        HStack {
            HStack(spacing: 20) {
                
                ZStack {
                    Circle()
                        .frame(width: 39, height: 39)
                        .foregroundColor(Color(mockItem.color[0]))
                    
                    Image(systemName: "checkmark")
                        .foregroundColor(.white)
                }
                
                ZStack {
                    Circle()
                        .frame(width: 39, height: 39)
                    .foregroundColor(Color(mockItem.color[1]))

//                    Image(systemName: "")
//                        .foregroundColor(.white)
                }
            }
            
            Spacer()
            
            HStack(spacing: 30) {
                Button {
                    
                } label: {
                    Text("\(mockItem.capacity[0]) GB")
                        .font(.system(size: 13, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                .frame(width: 72, height: 31)
                .background(orangeColor)
                .cornerRadius(10)
                
                Button {
                    
                } label: {
                    Text("\(mockItem.capacity[1]) GB")
                        .font(.system(size: 13, weight: .bold, design: .default))
                        .foregroundColor(priceColor)
                }
                .frame(width: 72, height: 31)
                .background(.white)
                .cornerRadius(10)

            }
        }
        .padding()
    }
}

struct ProductDetailColorCapacityItem_Previews: PreviewProvider {
    
    static let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    static var previews: some View {
        ProductDetailColorCapacityItem(mockItem: mockItem)
    }
}
