//
//  HotSalesItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct HotSalesItem: View {
    
    let hotSaleItem: HotSales
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .padding(.horizontal, 16)
                .foregroundColor(.black)
                .frame(width: 390, height: 200, alignment: .center)
            
            AsyncImage(url: URL(string: hotSaleItem.picture)) { image in
                image.resizable()
                    .padding(.horizontal, 16)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 360, height: 200)
                    .cornerRadius(20)
                
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                
                Spacer()
                
                if let isNew = hotSaleItem.isNew {
                    if isNew {
                        HotSaleNewItem()
                            .padding(.leading, 40)
                    }
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(hotSaleItem.title)
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    
                    Text(hotSaleItem.subtitle)
                        .font(.system(size: 11, weight: .regular, design: .default))
                        .foregroundColor(.white)
                }
                .padding(.leading, 40)
                
                Spacer()
                
                BuyNowItem()
                    .padding(.leading, 40)
                
                Spacer()
                
            }
            .frame(width: 390, height: 200, alignment: .leading)
        }
    }
}

//struct HotSalesItem_Previews: PreviewProvider {
//
//    static var previews: some View {
//        HotSalesItem()
//    }
//}
