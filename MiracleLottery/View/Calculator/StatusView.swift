//
//  StatusView.swift
//  MiracleLottery
//
//  Created by 김예원 on 2022/10/26.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        VStack{
            Text("0")
                .modifier(StatusModifier())
        }
    }
}
struct StatusModifier : ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(30)
            .frame(width: 350, height: 200, alignment: .bottomTrailing)
            .font(.largeTitle)
    }
}
struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
