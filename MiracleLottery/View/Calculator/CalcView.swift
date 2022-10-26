//
//  CalcView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
// command + N : 새 파일 생성

import SwiftUI

struct CalcView: View {
    var body: some View {
       
        ZStack {
            //배경색 만들기:ZStack 사용
            Color.black.edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                StatusView()
                HStack {
                    VStack{
                        FuncButtonView()
                        NumberView()
                    }
                    OperatorView()
                }
            }
        }
    }
}

struct CalcView_Previews: PreviewProvider {
    static var previews: some View {
        CalcView()
    }
}
