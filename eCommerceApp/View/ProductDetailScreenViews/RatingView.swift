//
//  RatingView.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 03.09.2022.
//

import SwiftUI

struct RatingView: View {
    
    @Binding var rating: Int
    
    let mockItem: MockItem

  //  var label = ""

    var maximumRating = 5

    var offImage: Image?
    var onImage = Image(systemName: "star.fill")

    var offColor = Color.gray
    var onColor = Color.yellow
    
    var body: some View {
        HStack {
//            if !label.isEmpty {
//                Text(label)
//            }

            ForEach(1..<maximumRating + 1, id: \.self) { number in
                image(for: Int(mockItem.rating))
                    .foregroundColor(Int(mockItem.rating) > rating ? offColor : onColor)
//                    .onTapGesture {
//                        rating = number
//                    }
            }
        }
    }
    
    func image(for number: Int) -> Image {
        if number > rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    
    static let mockItem: MockItem = Bundle.main.decode(mockItemURL)
    
    static var previews: some View {
        RatingView(rating: .constant(1), mockItem: mockItem)
    }
}
