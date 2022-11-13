//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Rohit Singh Rana on 03/10/22.
//

import SwiftUI


struct HistoryListView: View {
    var historyModel = HistoryModel()
    @Binding var imageID:Int
    var body: some View {
        NavigationView{
            List(historyModel.historyItems){item in
                NavigationLink(destination: HistoryDetailView(historyItem: item, imageID: self.$imageID)
                               
                ){
                    HistoryRowView(historyItem: item)
                }
            }
            .cornerRadius(30)
        }
    }
}


struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(imageID:.constant(0))
    }
}


