//
//  QuizData.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/01.
//
import SwiftUI

struct QuizData {
    static let knowledgeQuestions: [QuizItem] = [
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
    
    
    static let pictureQuestions: [QuizItem] = [
        QuizItem(
            question:"次のプランクトンはどれですか？",
            questionImage: Image(.mikazukimo),
            choices: ["イカダモ","アメーバ","アオミドロ","ミカヅキモ"],
            correctAnswer: "ミカヅキモ"
        ),
        QuizItem(
            question:"次のプランクトンはどれですか？",
            questionImage: Image(.ameba),
            choices: ["ハネケイソウ", "アメーバ", "ミカヅキモ", "アオミドロ"],
            correctAnswer: "アメーバ"
        ),
        QuizItem(
            question: "次のプランクトンはどれですか？",
            questionImage: Image(.bolbox),
            choices: ["ゾウリムシ", "ボルボックス","ワムシ", "アオミドロ"],
            correctAnswer: "ボルボックス"
        ),
        QuizItem(
            question: "次のプランクトンはどれですか？",
            questionImage: Image(.ikadamo),
            choices: ["ミドリムシ", "イカダモ", "ハネケイソウ", "ミカヅキモ"],
            correctAnswer: "イカダモ"
        ),
        QuizItem(
            question: "次のプランクトンはどれですか？",
            questionImage: Image(.aomidoro),
            choices: ["アオミドロ", "ワムシ", "ボルボックス", "クンショウモ"],
            correctAnswer: "アオミドロ"
        ),
        QuizItem(
            question: "次のプランクトンはどれですか？",
            questionImage: Image(.midorimushi),
            choices: ["ワムシ", "アオミドロ", "ボルボックス", "ミドリムシ"],
            correctAnswer: "ミドリムシ"
        ),
        QuizItem(
            question: "次のプランクトンはどれですか？",
            questionImage: Image(.mijinko),
            choices: ["ワムシ", "アオミドロ", "ミジンコ", "クンショウモ"],
            correctAnswer: "ミジンコ"
        ),
        QuizItem(
            question: "次のプランクトンはどれですか？",
            questionImage: Image(.zourimushi),
            choices: ["ゾウリムシ", "ボルボックス", "アオミドロ", "クンショウモ"],
            correctAnswer: "ゾウリムシ"
        ),
    ]
}
