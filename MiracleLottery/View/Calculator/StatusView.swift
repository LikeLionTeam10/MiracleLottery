//
//  StatusView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
//

import SwiftUI

struct StatusView: View {
    @ObservedObject var calcData: CalcData
    
    var body: some View {
        VStack{
            if calcData.currentStep != .isSetStep {
                Text("\(calcData.inputText)")
                .modifier(StatusModifier(calcData: calcData))
            }else{
                Text("\(calcData.inputText)")
                    .modifier(StatusModifier(calcData: calcData))
            }
         
                
               
        }
    }
}
struct StatusModifier : ViewModifier {
    @ObservedObject var calcData: CalcData
    func body(content: Content) -> some View {
        content
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
            .contextMenu {
                Button("C") {
                    if calcData.inputText.isEmpty == false{
                        calcData.inputText.removeLast()
                    }
                    
                }
                Button("AC") {
                    calcData.firstNumber = 0.0
                    calcData.secondNumber = 0.0
                    calcData.inputText = "0"
                    calcData.currentStep = .initialStep
                }
            }
    }
}
struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView(calcData: CalcData())
    }
}
