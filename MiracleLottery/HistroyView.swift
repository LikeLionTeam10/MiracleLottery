//
//  SwiftUIView.swift
//  MiracleLottery
//
//  Created by Martin on 2022/10/25.
//

import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var menuData: MenuData
    
    var body: some View {
        List{
            let menuResultListLength: Int = menuData.menuResultList.count <= 5 ? menuData.menuResultList.count : 5
            
            if menuResultListLength == 0 {
                Text("기록없음")
            } else {
                ForEach(0 ..< menuResultListLength) {
                    Text(menuData.menuResultList[$0])
                }
            }
            
        }.onAppear(perform:{
            menuData.maintainMenuResultList()})
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(menuData: MenuData())
    }
}
