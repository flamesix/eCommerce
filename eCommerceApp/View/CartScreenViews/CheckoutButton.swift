//
//  CheckoutButton.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct CheckoutButton: View {
    var body: some View {
        VStack {
            Button {
                
            } label: {
                HStack {
                    Spacer()
                    Text("Checkout")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            .padding()
            .background(orangeColor)
            .cornerRadius(10)
        }
        .padding(.horizontal)
    }
}

struct CheckoutButton_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutButton()
    }
}
