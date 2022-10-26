//
//  NumberView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
// Shift + command + n : 새로운 프로젝트 생성
//command + n : 새로운 파일 생성
// O+C+Enter : previews

import SwiftUI

struct NumberView: View {
    
    var body: some View {
        VStack{
            HStack{
                Button("7") {
                    print("7")
                }.modifier(NumberButtonModifier())
                
                Button("8") {
                    print("8")
                }.modifier(NumberButtonModifier())
                
                Button("9") {
                    print("9")
                }.modifier(NumberButtonModifier())
            }
            HStack{
                Button("4") {
                    print("4")
                }.modifier(NumberButtonModifier())
                
                Button("5") {
                    print("5")
                }.modifier(NumberButtonModifier())
                
                Button("6") {
                    print("6")
                }.modifier(NumberButtonModifier())
            }
            HStack(spacing: 10){
                Button("1") {
                    print("1")
                }.modifier(NumberButtonModifier())
                Button("2") {
                    print("2")
                }.modifier(NumberButtonModifier())

                Button("3") {
                    print("3")
                }.modifier(NumberButtonModifier())
            }
            HStack(spacing: 10){
                Button("0") {
                    print("0")
                }.padding(30)
                .frame(width: 170,height: 80,alignment: .leading)
                .background(Color(UIColor.darkGray))
                .foregroundColor(Color.white)
                .clipShape(Capsule())
                .font(.largeTitle)
                
                Button(".") {
                    print(".")
                }
                .modifier(NumberButtonModifier())
            }
    
        }
    }
}
struct NumberButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 80,height: 80)
            .foregroundColor(Color.white)
            .background(Color(UIColor.darkGray))
            .clipShape(Capsule())
            .font(.largeTitle)
    }
}
struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView()
    }
}
