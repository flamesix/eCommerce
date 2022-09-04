//
//  ProductView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct ProductView: View {
    
    let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    var body: some View {
     //   NavigationView {
            VStack {
                  ProductNavigationBarView()
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(mockItem.images, id: \.self) {
                            ProductDetailItem(mockImage: $0)
                        }
                    }
                }
                
                Spacer()
                
                ProductDetailDescriptionView(mockItem: mockItem)
                
                //                Spacer()
                //                Spacer()
            }
            .background(backColor)
            .navigationBarHidden(true)
            .ignoresSafeArea(.all, edges: .bottom)
        }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
