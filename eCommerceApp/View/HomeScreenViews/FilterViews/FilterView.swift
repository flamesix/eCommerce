//
//  FilterView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct FilterView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 37, height: 37)
                        .foregroundColor(darkColor)
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                }
                
                Spacer()
                Text("Filter options")
                    .font(.system(size: 18, weight: .medium, design: .default))
                Spacer()
                
                Button {
                    
                } label: {
                    Spacer()
                    Text("Done")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .medium, design: .default))
                    Spacer()
                }
                .padding()
                .background(orangeColor)
                .frame(width: 92, height: 37)
                .clipped()
                .cornerRadius(10)
                
            }
            
            Spacer()
            
            Text("Brand")
                .font(.system(size: 18, weight: .medium, design: .default))
            
            FilterItem(item: "Samsung")
            
            Text("Price")
                .font(.system(size: 18, weight: .medium, design: .default))
            
            FilterItem(item: "$300 - $500")
            
            Text("Size")
                .font(.system(size: 18, weight: .medium, design: .default))
            
            FilterItem(item: "4.5 to 5.5 inches")
            
            Spacer()
            
        }
        .padding()
        .background(.white)
        .frame(width: 390, height: 375)
        .cornerRadius(30)
    }
}

struct FilterView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
