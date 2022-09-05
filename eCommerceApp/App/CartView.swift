//
//  CartView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import Foundation
import SwiftUI

struct CartView: View {
    
   @State var mockCart: MockCart = Bundle.main.decode(mockCartURL)
    
    
    var body: some View {
        VStack(alignment: .leading) {
            CartNavigationBarView()
                .padding(.bottom, 40)
            
            Text("My Cart")
                .padding()
                .font(.system(size: 35, weight: .bold, design: .default))
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(darkColor)
                    .shadow(radius: 10)
                
                VStack {
                    VStack {
                        ForEach(mockCart.cart) {
                            CartItem(mockCartImage: $0.image, mockCartTitle: $0.title, mockCartPrice: $0.price, mockCartItem: $0, mockCartItems: $mockCart.cart, onDelete: deleteCartItem)
                                .padding(.top, 50)
                        }
                    }
                    .padding(.horizontal)
                    
                    Spacer()
                    CheckoutButton()
                        .padding()
                }
            }
            .frame(maxWidth: 428, maxHeight: 560)
            
        }
        .background(backColor)
        .navigationBarHidden(true)
        .ignoresSafeArea(.all, edges: .bottom)
    }
    
    func deleteCartItem(at offset: IndexSet) {
        withAnimation {
            mockCart.cart.remove(atOffsets: offset)
        }
    }
}


struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
