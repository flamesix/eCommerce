//
//  TabBarView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 02.09.2022.
//

import SwiftUI

struct TabBarView: View {
    
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(darkColor)
                .frame(maxWidth: 428, maxHeight: 73)
            
            HStack {
                Spacer()
                Button {
                    
                } label: {
                    Text("• Explorer")
                        .font(.system(size: 15, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                
                Spacer()
                Button {
                    viewModel.isShowCart.toggle()
                } label: {
                    ZStack {
                        Image("cartLogo")
                        if viewModel.mockCart.cart.count != 0 {
                            ZStack {
                                Circle()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.red)
                                Text("\(viewModel.mockCart.cart.count)")
                                    .foregroundColor(.white)
                                    .font(.system(size: 10, weight: .bold, design: .default))
                            }
                            .padding(.leading, 20)
                        .padding(.bottom, 20)
                        } else {
                            /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                        }
                    }
                    
                }
                
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .foregroundColor(.white)
                }
                
                Spacer()
                Button {
                    
                } label: {
                    Image("personLogo")
                }
                
                Spacer()
            }
            
            NavigationLink(isActive: $viewModel.isShowCart) {
                CartView()
            } label: {
                
            }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
