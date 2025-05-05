//
//  PokemonSpriteGalleryView.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//
//
//import SwiftUI
//
//import SwiftUI
//
//struct PokemonSpriteGalleryView: View {
//    let imageUrls: [String?]
//    let columns = [
//        GridItem(.flexible()), GridItem(.flexible())
//    ]
//
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: columns, spacing: 16) {
//                ForEach(imageUrls, id: \.self) { urlString in
//                    AsyncImage(url: URL(string: urlString)) { phase in
//                        switch phase {
//                        case .empty:
//                            ProgressView()
//                                .frame(width: 100, height: 100)
//                        case .success(let image):
//                            image
//                                .resizable()
//                                .scaledToFit()
//                                .frame(maxWidth: .infinity)
//                                .cornerRadius(8)
//                        case .failure:
//                            Image(systemName: "xmark.octagon")
//                                .resizable()
//                                .scaledToFit()
//                                .foregroundColor(.red)
//                                .frame(width: 80, height: 80)
//                        @unknown default:
//                            EmptyView()
//                        }
//                    }
//                }
//            }
//            .padding()
//        }
//        .navigationTitle("Sprite Gallery")
//    }
//}
//
//#Preview {
//    PokemonSpriteGalleryView(imageUrls: [
//        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
//        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png",
//        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/1.png",
//        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/1.png"
//    ])
//}
import SwiftUI

struct PokemonSpriteGalleryView: View {
    let imageUrls: [String?]
    let columns = [
            GridItem(.flexible()), GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView{
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(imageUrls.compactMap { $0 }, id: \.self) { urlString in
                    if let url = URL(string: urlString) {
                        CircleImage(imageURL: url)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    PokemonSpriteGalleryView(imageUrls: [
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png",
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/1.png",
        "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/1.png"
    ])
}
