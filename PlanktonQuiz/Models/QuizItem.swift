//
//  QuizItem.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/05.
//
import SwiftUI

struct QuizItem {
    let question: String
    var questionImage: Image? = nil
    var choices: [String]
    let correctAnswer: String
}
