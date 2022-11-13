//
//  PizzaHistoryView.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 03/10/22.
//

import SwiftUI

struct PizzaHistoryView: View {
    @State var imageID:Int = 0
    var body: some View {
        VStack {
            ContentHeaderView()
            Spacer()
            PageTitleView(title: "Pizza History")
            SelectedimageView(image: "\(imageID)_250w")
                .padding(5)
            HistoryListView(imageID: $imageID)
        }
        
    }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            PizzaHistoryView()
//            PizzaHistoryView()
//                .colorScheme(.dark)
//                .background(Color.black)
        }
        
    }
}
