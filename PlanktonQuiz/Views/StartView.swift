//
//  StartView.swift
//  PlanktonQuiz
//
//  Created by 杉崎康隆 on 2025/01/01.
//

import SwiftUI

struct StartView: View {
    @State var isShowingGenreSelectionView = false
    
    var body: some View {
        VStack {
            Spacer()
            Text("プランクトン\nクイズ！")
                .font(.system(size: 50).bold())
                .foregroundStyle(.originalBlue)
                .stroke(color: .originalWhite, width: 2)
                .multilineTextAlignment(.center)
            Spacer()
            Button {
                isShowingGenreSelectionView = true
            } label: {
                Image(.startButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
            .fullScreenCover(isPresented: $isShowingGenreSelectionView) {
                GenreSelectionView()
            }
        }
        .padding()
        .backgroundImage()
    }
}

#Preview {
    StartView()
}
