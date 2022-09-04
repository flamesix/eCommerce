//
//  ContentView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 29.08.2022.
//

import SwiftUI


struct ContentView: View {
    
    let hotSales: HomeStore = Bundle.main.decode(storeStringURL)
    let bestSellers: BestSellerContainer = Bundle.main.decode(storeStringURL)
//    let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    //    @State private var isButtonSelected = [true, false, false, false, false, false]
    //    @State private var isLikes = false
    //    @State var isFiltered = false
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    HomeNavigationBarView(viewModel: viewModel)
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        HeaderItem(title: "Select Category", subtitle: "view all")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                Button {
                                    toggleButton(0)
                                } label: {
                                    CategoryViewItem(category: categories[0], isButtonPressed: viewModel.isButtonSelected[0])
                                }
                                
                                Button {
                                    toggleButton(1)
                                } label: {
                                    CategoryViewItem(category: categories[1], isButtonPressed: viewModel.isButtonSelected[1])
                                }
                                
                                Button {
                                    toggleButton(2)
                                } label: {
                                    CategoryViewItem(category: categories[2], isButtonPressed: viewModel.isButtonSelected[2])
                                }
                                
                                Button {
                                    toggleButton(3)
                                } label: {
                                    CategoryViewItem(category: categories[3], isButtonPressed: viewModel.isButtonSelected[3])
                                }
                                
                                Button {
                                    toggleButton(4)
                                } label: {
                                    CategoryViewItem(category: categories[0], isButtonPressed: viewModel.isButtonSelected[4])
                                }
                                
                            }
                        }
                        .padding(.leading, 10)
                        
                        SearchItem()
                        
                        HeaderItem(title: "Hot sales", subtitle: "see more")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(hotSales.homeStore) {
                                    HotSalesItem(hotSaleItem: $0)
                                }
                            }
                        }
                        
                        HeaderItem(title: "Best Seller", subtitle: "see more")
                        
                        BestSellerView(bestSellers: bestSellers.bestSeller)
                        
                    }
                    
                    
                    
                    Spacer()
                    // Spacer()
                    TabBarView()
                }
                .background(backColor)
                .ignoresSafeArea(.all, edges: .bottom)
                
                if viewModel.isFiltered {
                    VStack {
                        Spacer()
                        FilterView()
                    }
                }
            }
            .navigationBarHidden(true)
            
        }
       // .navigationBarHidden(true)
        
    }
    
    private func toggleButton(_ button: Int) {
        viewModel.isButtonSelected = Array(repeating: false, count: 5)
        viewModel.isButtonSelected[button] = true
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
