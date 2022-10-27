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
    @ObservedObject var calcData: CalcData
    var body: some View {
        VStack{
            HStack{
                Button("7") {
                    
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "7"
                    print("7\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
                
                Button("8") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "8"
                    print("8\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
                
                Button("9") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "9"
                    print("9\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
            }
            HStack{
                Button("4") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "4"
                    print("4\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
                
                Button("5") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "5"
                    print("5\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
                
                Button("6") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "6"
                    print("6\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
            }
            HStack(spacing: 10){
                Button("1") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "1"
                    print("1\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
                Button("2") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "2"
                    print("2\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())

                Button("3") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "3"
                    print("3\n\(calcData.currentStep)")
                    
                }.modifier(NumberButtonModifier())
            }
            HStack(spacing: 10){
                Button("0") {
                    if calcData.currentStep == .initialStep{
                        calcData.inputText.removeLast()
                        calcData.currentStep = .isSetStep
                    }
                    if calcData.isCalculated == true {
                        calcData.firstNumber = 0.0
                        calcData.secondNumber = 0.0
                        calcData.isCalculated = false
                    }
                    calcData.inputText += "0"
                    print("0\n\(calcData.currentStep)")
                    
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
        NumberView(calcData: CalcData())
    }
}
