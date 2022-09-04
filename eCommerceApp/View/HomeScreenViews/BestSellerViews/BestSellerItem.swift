//
//  BestSellerItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct BestSellerItem: View {
    
    @State var bestSeller: BestSeller
    //  @State var isShowProductDetail = false
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 180, height: 227)
                .foregroundColor(.white)
            
            VStack(alignment: .leading) {
                AsyncImage(url: URL(string: bestSeller.picture)) { image in
                    image.resizable()
                        .scaledToFit()
                        .frame(width: 160, height: 140)
                } placeholder: {
                    ProgressView()
                }
                
                VStack(alignment: .leading) {
                    HStack {
//                        Text("$\(bestSeller.salePrice)")
                        Text(bestSeller.salePrice.formatted(.currency(code: "USD")))
                            .font(.system(size: 16, weight: .bold, design: .default))
                        
//                        Text("$\(bestSeller.fullPrice)")
                        Text(bestSeller.fullPrice.formatted(.currency(code: "USD")))
                            .foregroundColor(priceColor)
                            .strikethrough(true, color: priceColor)
                            .font(.system(size: 10, weight: .medium, design: .default))
                        
                    }
                    
                    Text(bestSeller.title)
                        .font(.system(size: 10, weight: .regular, design: .default))
                    
                    NavigationLink(isActive: $viewModel.isShowProductDetail) {
                        ProductView()
                    } label: {
                        
                    }
                }
                .padding()
            }
            
            LikeItem(isLiked: bestSeller.isLiked)
                .padding(.bottom, 190)
                .padding(.leading, 110)
        }
        .onTapGesture(count: 2) {
            bestSeller.isLiked.toggle()
        }
        .onTapGesture {
            viewModel.isShowProductDetail.toggle()
        }
    }
}

struct BestSellerItem_Previews: PreviewProvider {
    
    static let bestSellers: BestSellerContainer = Bundle.main.decode(storeStringURL)
    static let bestSeller = bestSellers.bestSeller
    
    static var previews: some View {
        BestSellerItem(bestSeller: bestSeller[0])
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
