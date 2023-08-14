//
//  BannerCell.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct BannerCell: View {
    let image: String

    private let imageSize = CGSize(width: 350, height: 180)
    private let cornerRadius: CGFloat = 25.0
    private let shadowRadius: CGFloat = 1

    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: imageSize.width, height: imageSize.height)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            .shadow(radius: shadowRadius)
    }
}

#Preview {
    BannerCell(image: "banner2")
}
