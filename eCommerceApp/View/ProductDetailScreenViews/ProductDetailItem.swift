//
//  ProductDetailItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct ProductDetailItem: View {
    
    let mockImage: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .frame(width: 290, height: 340, alignment: .center)
            
            AsyncImage(url: URL(string: mockImage)) { image in
                image.resizable()
                // .padding(.horizontal, 16)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 310)
                    .cornerRadius(20)
                
            } placeholder: {
                ProgressView()
            }
        }
        .padding(.horizontal, 40)
    }
}

//struct ProductDetailItem_Previews: PreviewProvider {
//
//   // static let mockItem: MockItem = Bundle.main.decode(mockItemURL)
//
//    static var previews: some View {
//        ProductDetailItem(mockItem: "")
//            .padding()
//            .previewLayout(.sizeThatFits)
//    }
//}
