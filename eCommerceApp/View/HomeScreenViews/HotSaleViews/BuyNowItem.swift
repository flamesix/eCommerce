//
//  BuyNowItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct BuyNowItem: View {
    
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        Button {
           print("Buy Now")
            viewModel.isShowProductDetail.toggle()
        } label: {
            Text("Buy now!")
                .foregroundColor(.black)
                .font(.system(size: 11, weight: .bold, design: .default))
        }
        .padding(6)
        .background(.white)
        .cornerRadius(5)
        
        NavigationLink(isActive: $viewModel.isShowProductDetail) {
            ProductView()
        } label: {
            
        }
    }
}

struct BuyNowItem_Previews: PreviewProvider {
    static var previews: some View {
        BuyNowItem()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
