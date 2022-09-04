//
//  CategoryViewItem.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 29.08.2022.
//

import SwiftUI

struct CategoryViewItem: View {
    
    let category: String
    var isButtonPressed: Bool
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .frame(width: 71, height: 71)
                    .foregroundColor(isButtonPressed ? orangeColor : .white)
                Image(category)
                    .resizable()
                    .foregroundColor(isButtonPressed ? .white : categoryColor)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
            }
            
            Text(category)
                .foregroundColor(isButtonPressed ? orangeColor : darkColor)
                .font(.system(size: 10, weight: .regular, design: .default))
        }
    }
}

struct CategoryViewItem_Previews: PreviewProvider {
    
    static var isButtonPressed = false
    
    static var previews: some View {
        CategoryViewItem(category: categories[0], isButtonPressed: false)
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
