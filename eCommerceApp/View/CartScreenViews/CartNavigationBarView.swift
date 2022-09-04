//
//  CartNavigationBarView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct CartNavigationBarView: View {
    
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()
   
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 37, height: 37)
                        .foregroundColor(darkColor)
                    Image(systemName: "chevron.backward")
                        .foregroundColor(.white)
                }
                .onTapGesture {
                    dismiss()
                }
                
                Spacer()
                Text("Add address")
                    .font(.system(size: 18, weight: .medium, design: .default))
                
                Button {
                    
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 37, height: 37)
                            .foregroundColor(orangeColor)
                        Image("locationPin")
                            .foregroundColor(.white)
            
                    }
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct CartNavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        CartNavigationBarView()
    }
}
