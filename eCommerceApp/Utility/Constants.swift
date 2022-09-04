//
//  Constants.swift
//  eCommerceApp
//
//  Created by Юрий Гриневич on 29.08.2022.
//

import Foundation
import SwiftUI

let storeStringURL = "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175"
let mockItemURL = "https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5"
let mockCartURL = "https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149"

let orangeColor: Color = Color("OrangeColor")
let darkColor: Color = Color("DarkColor")
let backColor: Color = Color("Background")
let priceColor: Color = Color("PriceColor")
let categoryColor: Color = Color("CategoryItemColor")
let stepperColor: Color = Color("StepperColor")

let categories: [String] = ["Phones", "Computer", "Health", "Books"]


//let colomnSpacing: CGFloat = 5
//let rowSpacing: CGFloat = 200
//
//var gridLayout: [GridItem] {
//    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
//}

let columns = [
        GridItem(.fixed(181)),
        GridItem(.fixed(181)),
    ]
