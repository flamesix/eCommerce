//
//  NavigationBarView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 29.08.2022.
//

import SwiftUI

struct HomeNavigationBarView: View {

//    @State var isFiltered: Bool
//    @StateObject var viewModel = ViewModel()
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        HStack {
            Spacer()
            Image("locationPin")
                .foregroundColor(orangeColor)
            
            Text("Zihuatanejo, Gro")
                .font(.system(size: 15, weight: .medium, design: .default))
                
                
            
            Image(systemName: "chevron.down")
            Spacer()
            
            Button {
                viewModel.isFiltered.toggle()
            } label: {
                Image("filterIcon")
            }
        }
        .padding(.horizontal)
    }
}

//struct NavigationBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBarView(isFiltered: false)
//            .padding()
//            .previewLayout(.sizeThatFits)
//    }
//}
