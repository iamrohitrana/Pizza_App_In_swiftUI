//
//  ContentView.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 29/09/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var orderModel:OrderModel
    @State var isMenuDisplayed:Bool = true
    var body: some View {
        VStack() {
//            ContentHeaderView()
//                .layoutPriority(1.0)
            Button(action: {self.isMenuDisplayed.toggle()}){
                PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
            }
            Spacer()
            MenuListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            OrderListView(orderModel: orderModel)
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
            .animation(.spring())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(orderModel: OrderModel())
            .environmentObject(UserPreferences())
    }
}

