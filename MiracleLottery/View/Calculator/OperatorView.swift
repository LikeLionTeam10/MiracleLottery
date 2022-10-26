//
//  OperatorView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
//

import SwiftUI

struct OperatorView: View {
    var body: some View {
        VStack{
                Button("÷") {
                    print("÷")
                }.modifier(OperatorButtonModifier())
                
                Button("×") {
                    print("×")
                }.modifier(OperatorButtonModifier())
                
                Button("−") {
                    print("−")
                }.modifier(OperatorButtonModifier())
              
                Button("+") {
                    print("+")
                }.modifier(OperatorButtonModifier())
            
                Button("=") {
                    print("=")
                }.modifier(OperatorButtonModifier())
            
            }
    }
}
struct OperatorButtonModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 80,height: 80)
            .foregroundColor(Color.white)
            .background(Color.orange)
            .clipShape(Capsule())
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}
struct OperatorView_Previews: PreviewProvider {
    static var previews: some View {
        OperatorView()
    }
}
