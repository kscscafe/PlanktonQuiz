//
//  GenreSelectionView.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/05.
//

import SwiftUI

struct GenreSelectionView: View {
    @State var isShowingQuizView = false
    @State var selectedQuizData: [QuizItem] = []
    
    var body: some View {
        VStack {
            Button {
                selectedQuizData = QuizData.knowledgeQuestions
                isShowingQuizView = true
            } label: {
                Text("知識クイズ")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title.bold())
                    .background(Color.originalWhite)
                    .foregroundStyle(Color.originalBlack)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button {
                selectedQuizData = QuizData.pictureQuestions
                isShowingQuizView = true
            } label: {
                Text("画像クイズ")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .font(.title.bold())
                    .background(Color.originalWhite)
                    .foregroundStyle(Color.originalBlack)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding()
        .backgroundImage()
        .fullScreenCover(isPresented: $isShowingQuizView) {
            QuizView(quizItems: $selectedQuizData)
        }
    }
}

#Preview {
    GenreSelectionView()
}
