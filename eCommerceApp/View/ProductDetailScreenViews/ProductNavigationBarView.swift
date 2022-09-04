//
//  ProductNavigationBarView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct ProductNavigationBarView: View {
    
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()
   
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 37, height: 37)
                        .foregroundColor(darkColor)
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                }
                .onTapGesture {
                    dismiss()
                }
                
                Spacer()
                Text("Product details")
                    .font(.system(size: 18, weight: .medium, design: .default))
                Spacer()
                
                Button {
                    viewModel.isShowCart.toggle()
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 37, height: 37)
                            .foregroundColor(orangeColor)
                        Image("cartLogo")
                    }
                }
                
                NavigationLink(isActive: $viewModel.isShowCart) {
                    CartView()
                } label: {
                    
                }

            }
            .padding(.horizontal, 20)
        }
    }
}

struct ProductNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProductNavigationBarView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
