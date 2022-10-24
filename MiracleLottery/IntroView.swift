//
//  IntoView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/24.
//

import SwiftUI

struct IntroView: View {
    
    @ObservedObject var menuData :MenuData = MenuData()
    
    var body: some View {
        
        NavigationView{
            VStack{
                Text("우리는 무적의 10조")
                Text("무엇이든 돌려드립니다.")
                .padding()
                //esc
                NavigationLink(destination: LunchView(menuData: menuData)){
                    Text("점매추")
                }.onAppear(perform: menuData.resetData)
                .padding()
                NavigationLink(destination: DinnerView(menuData: menuData)){
                    Text("저매추")
                }.onAppear(perform: menuData.resetData)
                .padding()
                
                Text("최근 돌림판 결과는\(menuData.menuResultList.last!)입니다.")
                .padding()
                
                NavigationLink(destination: Text("결과보기")){
                    Text("결과")
                }

            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
