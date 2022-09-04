//
//  FilterItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct FilterItem: View {
    
    let item: String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5)
                .stroke(.gray)
                .foregroundColor(.clear)
                .frame(maxHeight: 37)
                

            
            HStack {
            Text(item)
                    .padding(.leading)
                    .font(.system(size: 18, weight: .regular, design: .default))
                
            Spacer()
            
            Image(systemName: "chevron.down")
                    .padding(.trailing)
                    .foregroundColor(priceColor)
            }
        }
    }
}

struct FilterItem_Previews: PreviewProvider {
    static var previews: some View {
        FilterItem(item: "Samsung")
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
