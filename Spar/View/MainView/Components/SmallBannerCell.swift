//
//  SmallBannerCell.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct SmallBannerCell: View {
    let image: String

    private let imageSize = CGSize(width: 100, height: 120)
    private let cornerRadius: CGFloat = 15
    private let shadowRadius: CGFloat = 2
    private let padding: CGFloat = 5

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: imageSize.width, height: imageSize.height)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .shadow(radius: shadowRadius)
            .padding(padding)
    }
}

#Preview {
    SmallBannerCell(image: "smallBanner1")
}
