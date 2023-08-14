//
//  StoriesCell.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct StoriesCell: View {
    let image: String
    let title: String
    
    private let imageSize: CGFloat = 50
    private let imageFrameSize: CGFloat = 60
    private let strokeWidth: CGFloat = 3
    private let textFrameWidth: CGFloat = 80
    
    var body: some View {
        VStack {
            Button(action: {}) {
                ZStack {
                    Image(image)
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: imageSize, height: imageSize)
                        .foregroundColor(.accentColor)
                    Circle()
                        .stroke(lineWidth: strokeWidth)
                        .foregroundColor(.accentColor)
                        .frame(width: imageFrameSize, height: imageFrameSize)
                }
            }
            Text(title)
                .font(.caption)
                .frame(width: textFrameWidth)
                .multilineTextAlignment(.center)
        }
        .padding(.top, 3)
    }
}

#Preview {
    StoriesCell(image: "group", title: "Мы в соцсетях")
}
