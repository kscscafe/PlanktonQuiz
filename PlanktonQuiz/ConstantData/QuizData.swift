//
//  QuizData.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/01.
//


struct QuizData {
    static let quizItems = [
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
}