//
//  RatingView.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 03/10/22.
//

import SwiftUI

struct RatingView: View {
    var count:Int = 4
    var rating: [String]{
//        let symbolName = "\(count).circle"
        let symbolName = "star.circle.fill"
        return Array(repeating: symbolName, count: count)
    }
    var body: some View {
        HStack {
            ForEach(rating, id: \.self){item in
                Image(systemName: item)
                    .font(.headline)
                    .foregroundColor(Color("G4"))
            }
        }
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(count: 5)
    }
}
