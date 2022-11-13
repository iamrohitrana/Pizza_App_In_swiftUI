//
//  SelectedimageView.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 05/10/22.
//

import SwiftUI

struct SelectedimageView: View {
    var image:String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: .black, radius: 10,x:5, y: 5)
    }
}

struct SelectedimageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedimageView(image: "1_250w")
    }
}
