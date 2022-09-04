//
//  CartStepper.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct CartStepper: View {
    
  //  @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 26)
            
            VStack(spacing: 5) {
                Button {
                    viewModel.changeCartItem(increment: -1)
                } label: {
                    Image("minus")
                        .foregroundColor(.white)
                        .frame(width: 10, height: 10)
                }
                
                Text(String(viewModel.quantity))
                    .font(.system(size: 18, weight: .medium, design: .default))
                    .foregroundColor(.white)
                
                Button {
                    viewModel.changeCartItem(increment: 1)
                } label: {
                    Image("plus")
                        .foregroundColor(.white)
                        .frame(width: 10, height: 10)
                }
                
                
            }
        }
        .frame(width: 30, height: 70)
        .foregroundColor(stepperColor)
    }
}

struct CartStepper_Previews: PreviewProvider {
    static var previews: some View {
        CartStepper()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
