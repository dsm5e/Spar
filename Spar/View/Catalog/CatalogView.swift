//
//  CatalogView.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct CatalogView: View {
    let width: CGFloat = 150
    
    var body: some View {
        Image(systemName: "square.grid.2x2")
            .resizable()
            .scaledToFit()
            .frame(width: width)
            .foregroundColor(.green)
    }
}

#Preview {
    CatalogView()
}
