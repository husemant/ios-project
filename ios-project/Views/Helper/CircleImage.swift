//
//  CircleImage.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/3/25.
//

import SwiftUI

struct CircleImage: View {
    var imageURL: URL

    var body: some View {
        AsyncImage(url: imageURL) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: 150, height: 150)
            case .success(let image):
                image
                    .resizable()
                    .overlay {
                        RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 3)
                    }
                    .shadow(radius: 7)
                    .frame(width: 150, height: 150)
            case .failure:
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 150, height: 150)
                    .foregroundColor(.gray)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    CircleImage(imageURL: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png")!)
}
