//
//  HuliPizzaApp.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 29/09/22.
//

import SwiftUI

@main
struct HuliPizzaApp: App {
    var body: some Scene {
        WindowGroup {
//            ContentView(orderModel: OrderModel())
//                .environmentObject(UserPreferences())
            RootTabView()
                .environmentObject(UserPreferences())
        }
    }
}
