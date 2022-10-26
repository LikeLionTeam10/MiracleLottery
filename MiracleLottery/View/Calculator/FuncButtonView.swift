//
//  FuncButtonView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
//

import SwiftUI

struct FuncButtonView: View {
    var body: some View {
        HStack{
            Button("AC") {
                print("AC")
            }.modifier(FuncButtonModifier())
            
            Button("⁺/₋") {
                print("⁺/₋")
            }.modifier(FuncButtonModifier())
            .tracking(0)
            
            Button("%") {
                print("%")
            }.modifier(FuncButtonModifier())
        }
    }
}

struct FuncButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 80,height: 80)
            .foregroundColor(Color.black)
            .background(Color(UIColor.systemGray3))
            .clipShape(Capsule())
            .font(.largeTitle)
            .fontWeight(.medium)
    }
}

struct FuncButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FuncButtonView()
    }
}
