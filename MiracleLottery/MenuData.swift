//
//  MenuData.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/24.
//

import Foundation
import Combine

class MenuData : ObservableObject {
    // 5개 불러옴 순서대로 나옴 분리 ㄴㄴ 한 곳 배열 한개로 만들자..?!!
    // 결과창에서
    @Published var menuResultList : [String] = [""]
    
    //메뉴 보드
    @Published var userNumber: Int = 10
    @Published var rotation: Int = 0
    @Published var titleTextOpacity: CGFloat = 0.0
    @Published var resultTextOpacity: CGFloat = 0.0
    
    func resetData(){
        userNumber = 10
        rotation = 0
        titleTextOpacity = 0.0
        resultTextOpacity = 0.0
    }
    func menuResultListUpdate(menuName:String){
        self.menuResultList.append(menuName)
    }
}

