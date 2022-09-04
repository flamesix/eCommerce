//
//  HotSaleNewItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct HotSaleNewItem: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 27, height: 27)
                .foregroundColor(orangeColor)
            Text("New")
                .foregroundColor(.white)
                .font(.system(size: 10, weight: .bold, design: .default))
        }
    }
}

struct HotSaleNewItem_Previews: PreviewProvider {
    static var previews: some View {
        HotSaleNewItem()
    }
}
