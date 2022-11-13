//
//  ListHeaderView.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 03/10/22.
//

import SwiftUI

struct ListHeaderView: View {
    @ObservedObject var orderModel:OrderModel
    var text:String
    var body: some View {
        HStack {
            Text(text)
                .padding(.leading, 5)
                .foregroundColor(Color("G2"))
            Spacer()
            Text(orderModel.formattedTotal)
                .fontWeight(.heavy)
                .padding(.trailing)
        }.background(Color("G4"))
            .foregroundColor(Color("IP"))
            .font(.headline)
    }
}
struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(orderModel:OrderModel(), text: "Menu")
    }
}
