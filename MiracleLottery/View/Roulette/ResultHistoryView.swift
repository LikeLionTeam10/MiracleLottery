//
//  ResultHistoryView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/25.
//

import SwiftUI

struct ResultHistoryView: View {
    @ObservedObject var menuData: MenuData
    @ObservedObject var calcData: CalcData
    
    var body: some View {
        
        // var resultList = menuData.menuResultList //참조가 안됨.. 직접쓰자..
        VStack {
            List {
                ForEach(menuData.menuResultList,id: \.self) { element in
                    Text(element)
                }.onDelete { index in
                    menuData.menuResultList.remove(atOffsets: index)
                }
            }
            List {
                ForEach(calcData.calcHistoryList,id: \.self) { element in
                    Text(element)
                }.onDelete { index in
                    calcData.calcHistoryList.remove(atOffsets: index)
                }
            }
        }
    }
}
    
    //struct ResultHistoryView_Previews: PreviewProvider {
    //    static var previews: some View {
    //        ResultHistoryView()
    //    }
    //}

