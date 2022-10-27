//
//  OperatorView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
//

import SwiftUI

struct OperatorView: View {
    @ObservedObject var calcData: CalcData
    var body: some View {
        VStack{
                Button("÷") {
                    print("÷")
                    calcData.firstNumber = Float(calcData.inputText)!
                    calcData.inputText = ""
                    calcData.currentOperator = .divide
                }.modifier(OperatorButtonModifier())
                
                Button("×") {
                    print("×")
                    calcData.firstNumber = Float(calcData.inputText)!
                    calcData.inputText = ""
                    calcData.currentOperator = .multiply
                }.modifier(OperatorButtonModifier())
                
                Button("−") {
                    print("−")
                    calcData.firstNumber = Float(calcData.inputText)!
                    calcData.inputText = ""
                    calcData.currentOperator = .minus
                }.modifier(OperatorButtonModifier())
              
                Button("+") {
                    print("+")
                    calcData.firstNumber = Float(calcData.inputText)!
                    calcData.inputText = ""
                    calcData.currentOperator = .plus
                }.modifier(OperatorButtonModifier())
            
                Button("=") {
                    print("=")
                    calcData.secondNumber = Float(calcData.inputText)!
                    calcData.inputText = String(calcData.resultNumber)
                    if calcData.isDividedByZero {
                        calcData.calcHistoryList.append("0으로 값을 나눌 수 없습니다.")
                        
                    }else{
                        calcData.calcHistoryList.append(calcData.resultText)
                    }
                    print("\(calcData.calcHistoryList)")
                    print("\(calcData.isDividedByZero)")
                    calcData.isCalculated = true
                    calcData.currentStep = .initialStep
                    calcData.firstNumber = calcData.resultNumber
                    calcData.secondNumber = 0.0
                   
                }.modifier(OperatorButtonModifier())
                .alert(isPresented: $calcData.isDividedByZero) {
                    Alert(title: Text("경고"), message: Text("0으로 값을 나눌 수 없습니다."), dismissButton: .default(Text("확인")){ calcData.isDividedByZero = false})
                    
                        }
            
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
        OperatorView(calcData: CalcData())
    }
}
