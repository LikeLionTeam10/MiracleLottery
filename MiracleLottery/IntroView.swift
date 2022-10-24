//
//  IntoView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/24.
//

import SwiftUI

struct IntroView: View {
    
    @ObservedObject var menuData :MenuData = MenuData()
    
    @State private var titleRotation: Double = 0.0
    @State private var titleOpacity: Double = 0.0
    
    var body: some View {
        
        NavigationView{
            VStack{
                Spacer()
                
                VStack(alignment: .leading, spacing: -1){
                    Text("더는 메뉴고민 말아요.")
                    Text("10조가 있잖아요!")
                }
                .font(.largeTitle)
                .fontWeight(.black)
                .rotationEffect(.degrees(titleRotation))
                .opacity(titleOpacity)
                .onAppear(perform:{
                    
                    withAnimation(.easeInOut(duration: 0.5)) {
                        titleOpacity = 1.0
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) {
                        withAnimation(.easeInOut(duration: 2)) {
                            titleRotation += 360.0
                        }
                    }
                    
                })
                
        
                Spacer()
                
                Text(menuData.getLastMenu())
                .padding()
                .font(.headline)
                .fontWeight(.bold)
                
                Divider()
                Spacer()
            
                //esc
                HStack(spacing: 10){
                    NavigationLink(destination: LunchView(menuData: menuData)){
                        NavButtonView(color: .pink) {
                            Text("점심 메뉴 추천받기")
                        }
                    }
                    NavigationLink(destination: DinnerView(menuData: menuData)){
                        NavButtonView(color: .purple) {
                            Text("저녁 메뉴 추천받기")
                        }
                    }
                }
                .onAppear(perform: menuData.resetData)
                .padding()
                
                
           
                Spacer()
            
                
                NavigationLink(destination: HistoryView(menuData: menuData)){
                    NavButtonView(color: .primary) {
                        Text("History")
                    }

                }
               
                Spacer()
            }
        }
    }
}



struct NavButtonView<Content: View>: View {
    let content : () -> Content
    var color: Color
    
    init(color: Color, @ViewBuilder content: @escaping () -> Content) {
        self.content = content
        self.color = color
    }
    
    var body: some View {
        VStack{
            content()
        }
        .frame(width: 180, height: 50, alignment: .center)
        .background(color)
        .foregroundColor(.white)
        .cornerRadius(10)
    }
    
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView(menuData: MenuData())
    }
}
