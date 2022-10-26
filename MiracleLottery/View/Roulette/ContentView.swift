//
//  ContentView.swift
//  MiracleLottery
//
//  Created by Martin on 2022/10/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var menuData :MenuData = MenuData()
    
    var body: some View {
        
        TabView{
            NavigationView {
                //안된이유.. 메뉴데이터 안넣음;;
                IntroView(menuData :menuData)
               .onAppear(perform: menuData.resetData)//메뉴 화면이 돌고 안바뀜
            }.tabItem {
                Image(systemName: "house.fill")
                Text("홈")
            }
            
            NavigationView {
                LunchView(menuData: menuData)
                .onDisappear(perform: menuData.resetData)
            }
            .tabItem {
                Image(systemName: "sun.max.fill")
                Text("점매추")
            }
            NavigationView {
                DinnerView(menuData: menuData)
                .onDisappear(perform: menuData.resetData)
            }.tabItem {
                Image(systemName: "moon.fill")
                Text("저매추")
            }
            NavigationView {
                ResultHistoryView(menuData: menuData)
            }.tabItem {
                Image(systemName: "fork.knife")
                Text("결과")
            }
        }
    }
    
}
 
 struct ContentView_Previews: PreviewProvider {
     static var previews: some View {
        ContentView()
    }
 }
