//
//  QuizView.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/01.
//

import SwiftUI

struct QuizItem {
    let question: String
    var choices: [String]
    let correctAnswer: String
}

struct QuizView: View {
    @State var isShowingScoreView = false
    @State var isShowingResultSymbol = false
    @State var isAnswerCorrect = false
    @State var currentQuestionIndex = 0
    @State var correctCount = 0
    
    let choices = ["イカダモ","アメーバ","アオミドロ","ボルボックス"]
    
    let quizItems = [
        QuizItem(
            question:"次のうち、植物と動物の両方の性質を持つプランクトンは？",
            choices: ["イカダモ","アメーバ","アオミドロ","ボルボックス"],
            correctAnswer: "ボルボックス"
        ),
        QuizItem(
            question: "次のうち、分裂をして増えるプランクトンは？",
            choices: ["ハネケイソウ", "アメーバ", "ミカヅキモ", "アオミドロ"],
            correctAnswer: "アメーバ"
        ),
        QuizItem(
            question: "次のうち、光合成をするプランクトンは？",
            choices: ["ゾウリムシ", "ミジンコ","ワムシ", "アオミドロ"],
            correctAnswer: "アオミドロ"
        ),
        QuizItem(
            question: "次のうち、べん毛やせん毛を持つプランクトンは？",
            choices: ["ミドリムシ", "イカダモ", "ハネケイソウ", "ミカヅキモ"],
            correctAnswer: "ミドリムシ"
        ),
        QuizItem(
            question: "次のうち、多細胞生物なのはどれ？",
            choices: ["ワムシ", "アオミドロ", "ボルボックス", "クンショウモ"],
            correctAnswer: "ワムシ"
        )
    ]
    var body: some View {
        ZStack {
            VStack {
                Text("問題番号: \(currentQuestionIndex+1)/\(quizItems.count)")
                    .font(.headline)
                    .padding(10)
                    .background(.originalBlue)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text(quizItems[currentQuestionIndex].question)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalLightBlue)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(.originalBlue, lineWidth: 5)
                    )
                    .frame(maxHeight: .infinity)
                ForEach(quizItems[currentQuestionIndex].choices, id: \.self) { choice in
                    Button {
                        print("\(choice)を選択しました。")
                        print("正解は\(quizItems[currentQuestionIndex].correctAnswer)でした。")
                        
                        if choice == quizItems[currentQuestionIndex].correctAnswer {
                            print("正解です。")
                            correctCount += 1
                            isAnswerCorrect = true
                        } else {
                            print("不正解です。")
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
    QuizView()
}
