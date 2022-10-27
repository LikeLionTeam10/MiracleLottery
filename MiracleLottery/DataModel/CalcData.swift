//
//  CalcData.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
// command +A , Control +i

import Foundation

class CalcData :ObservableObject {
    // let synthesizer: AVSpeechSynthesizer = AVSpeechSynthesizer()
    
    @Published var currentOperator: Operator = .plus
    @Published var currentStep: Step = .initialStep
    @Published var firstNumber: Float = 0
    @Published var secondNumber: Float = 0
    @Published var inputText: String = "0"
    @Published var calcHistoryList: [String] = []
    @Published var isDividedByZero: Bool = false
    @Published var isCalculated: Bool = false
    
    enum Eunneun: String {
        case eun = "은"
        case neun = "는"
    }
    
    enum Step {
        //  =
        case initialStep
        // inputText 초기화
        case isSetStep
        
    }
    
    enum Operator {
        case plus
        case minus
        case multiply
        case divide
    }
    
    var resultNumber: Float {
        get{
            // myOperator 에 저장된 값에 따라 다른 결과물을 출력해보자
            var resultNumber: Float = 0.0 // 결과값이 들어갈 변수
            switch currentOperator {
            case .plus: resultNumber = firstNumber + secondNumber
            case .minus: resultNumber = firstNumber - secondNumber
            case .multiply: resultNumber = firstNumber * secondNumber
            case .divide:
                if secondNumber == 0.0 && currentOperator == .divide {
                    isDividedByZero = true
                    return 0 }else {
                        resultNumber = firstNumber / secondNumber
                    }
            default:
                print("Wrong operator")
            }
            return resultNumber
        }
    }
    
    var resultText: String {
        get {
            //결과 텍스트 만들기
            var tempResultText: String = ""
            // 두번째 숫자의 발음에 받침 유무에 따라 은/는 을 결정
            // 두번째 숫자의 1의자리 수만 중요하기 때문에 SecondNumber % 10 를 Switch
            switch Int(secondNumber) % 10{
            case 1, 3, 6, 7, 8, 0 : // 받침이 있는 1의 자리 숫자
                tempResultText = "\(firstNumber) \(currentOperator) \(secondNumber) \(Eunneun.eun.rawValue) \(resultNumber)입니다. "
            case 2, 4, 5, 9: // 받침이 없는 1의 자리 숫자
                tempResultText = "\(firstNumber) \(currentOperator) \(secondNumber) \(Eunneun.neun.rawValue) \(resultNumber)입니다. "
            default:
                tempResultText = "무엇인가 잘못되었습니다."
            }
            return tempResultText  }
    }
}

extension String {
    func deletingPrefix(_ prefix: String) -> String {
        
        guard self.hasPrefix(prefix) else { return self }
        
        return String(self.dropFirst(prefix.count))
    }
}
