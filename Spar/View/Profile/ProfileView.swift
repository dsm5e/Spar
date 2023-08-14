//
//  ProfileView.swift
//  Spar
//
//  Created by dsm 5e on 14.08.2023.
//

import SwiftUI

struct ProfileView: View {
    let width: CGFloat = 150

    var body: some View {
        Image(systemName: "person")
            .resizable()
            .scaledToFit()
            .frame(width: width)
            .foregroundColor(.green)
    }
}

#Preview {
    ProfileView()
}
