//
//  BestSellerView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct BestSellerView: View {
    
    let bestSellers: [BestSeller]
//    let isLiked: Bool
    
    var body: some View {
   //     ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .center) {
                ForEach(bestSellers) {
                    BestSellerItem(bestSeller: $0)
                }
            }
       // }
    }
}
