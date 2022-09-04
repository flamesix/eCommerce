//
//  HeaderItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct HeaderItem: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.system(size: 25, weight: .bold, design: .default))
            Spacer()
            Button {
                
            } label: {
                Text(subtitle)
                    .foregroundColor(orangeColor)
                    .font(.system(size: 15, weight: .regular, design: .default))
            }

        }
        .padding(.horizontal)
    }
}

struct HeaderItem_Previews: PreviewProvider {
    static var previews: some View {
        HeaderItem(title: "Test", subtitle: "view all")
    }
}
