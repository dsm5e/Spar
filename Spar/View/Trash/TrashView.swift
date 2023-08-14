//
//  TrashView.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct TrashView: View {
    let width: CGFloat = 150
    
    var body: some View {
        Image(systemName: "trash")
            .resizable()
            .scaledToFit()
            .frame(width: width)
            .foregroundColor(.green)
    }
}

#Preview {
    TrashView()
}
