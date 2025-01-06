//
//  QuizView.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/01.
//

import SwiftUI

struct QuizView: View {
    @State var isShowingScoreView = false
    @State var isShowingResultSymbol = false
    @State var isAnswerCorrect = false
    @State var currentQuestionIndex = 0
    @State var correctCount = 0
    
    @Binding var quizItems: [QuizItem]

    var body: some View {
        ZStack {
            VStack {
                Text("問題番号: \(currentQuestionIndex+1)/\(quizItems.count)")
                    .font(.headline)
                    .padding(10)
                    .background(.originalBlue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                VStack {
                    Text(quizItems[currentQuestionIndex].question)
                        .font(.title)
                    quizItems[currentQuestionIndex].questionImage?
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.originalLightBlue.clipShape(RoundedRectangle(cornerRadius: 10)))
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(.originalBlue, lineWidth: 5)
                )
                .frame(maxHeight: .infinity)
                    
                ForEach(quizItems[currentQuestionIndex].choices, id: \.self) { choice in
                    Button {
                        if choice == quizItems[currentQuestionIndex].correctAnswer {
                            correctCount += 1
                            isAnswerCorrect = true
                        } else {
                            isAnswerCorrect = false
                        }
                        
                        isShowingResultSymbol = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            self.isShowingResultSymbol = false
                            if currentQuestionIndex + 1 >= quizItems.count {
                                isShowingScoreView = true
                                return
                            }
                            currentQuestionIndex += 1
                        }
                    } label: {
                        Text(choice)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .font(.title.bold())
                            .background(Color.originalWhite)
                            .foregroundStyle(.originalBlack)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .fullScreenCover(isPresented: $isShowingScoreView) {
                        ScoreView(scoreText: "\(quizItems.count)問中\(correctCount)問正解！")
                    }
                }
            }
            .padding()
            
            if isShowingResultSymbol {
                Text(isAnswerCorrect ? "○" : "×")
                    .font(.system(size:1000))
                    .minimumScaleFactor(0.1)
                    .foregroundStyle(isAnswerCorrect ? .green : .red)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(.black.opacity(0.5))
            }
        }
        .backgroundImage()
    }
}

#Preview {
    QuizView(quizItems: .constant(QuizData.knowledgeQuestions))
}
