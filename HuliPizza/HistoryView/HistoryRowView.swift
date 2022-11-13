//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 03/10/22.
//

import SwiftUI

struct HistoryRowView: View {
    
    var historyItem:HistoryItem
    var body: some View {
        HStack(alignment: .top) {
            Image("\(historyItem.id)_100w")
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 5, y: 5)
            Text("\(historyItem.name)")
                .font(.title)
            Spacer()
        }
            .overlay(
                    Image(systemName: "")
                        .padding()
                        .font(.title)
                        .foregroundColor(Color("G3"))
                    ,alignment: .trailing
                )
            
        
    }
}
struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView(historyItem: HistoryModel().historyItems[0] )
    }
}


//chevron.right.square
