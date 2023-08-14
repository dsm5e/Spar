//
//  ItemCell.swift
//  Spar
//
//  Created by dsm 5e on 15.08.2023.
//

import SwiftUI

struct ItemCell: View {
    let item: Item

    private let imageSize = CGSize(width: 150, height: 120)
    private let circleButtonSize: CGFloat = 50
    private let promotionFrameSize = CGSize(width: 140, height: 30)
    private let cornerRadius: CGFloat = 15
    private let shadowRadius: CGFloat = 4
    private let padding: CGFloat = 10

    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack {
                Spacer()
                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: imageSize.width, height: imageSize.height)
                HStack {
                    VStack {
                        Text(item.price.formatted())
                            .font(.headline.bold())
                            .foregroundColor(.black)
                            + Text(" р/шт")
                            .font(.subheadline)
                            .foregroundColor(.black)

                        if item.priceDrop {
                            Text(item.price.formatted())
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                                .strikethrough()
                                + Text(" р/шт")
                                .font(.subheadline)
                                .foregroundStyle(.gray)
                                .strikethrough()
                        }
                    }

                    Spacer()

                    Button {
                    } label: {
                        Circle()
                            .frame(width: circleButtonSize, height: circleButtonSize)
                            .overlay {
                                Image(systemName: "trash.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.white)
                            }
                    }
                }
                .padding(padding)
            }
            if !item.promotion.rawValue.isEmpty {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .foregroundColor(.red.opacity(0.6))
                    .frame(width: promotionFrameSize.width, height: promotionFrameSize.height)
                    .offset(x: -10)
                    .overlay {
                        Text(item.promotion.rawValue)
                            .foregroundColor(.white)
                    }
            }
        }
        .frame(width: 160, height: 220) 
        .background(Color.white)
        .cornerRadius(cornerRadius)
        .shadow(radius: shadowRadius)
        .padding(.vertical)
    }
}

#Preview {
    ItemCell(item: Item(image: "item1", price: 99.20, promotion: .superPrice, priceDrop: true))
}
