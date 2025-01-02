//
//  StartView.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/01.
//

import SwiftUI

struct StartView: View {
    @State var isShowingQuizView = false
    
    var body: some View {
        VStack {
            Text("プランクトンクイズ")
            Button("スタート") {
                isShowingQuizView = true
            }
            .fullScreenCover(isPresented: $isShowingQuizView) {
                QuizView()
            }
        }
        .padding()
    }
}

#Preview {
    StartView()
}
