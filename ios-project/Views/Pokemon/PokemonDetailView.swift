//
//  PokemonDetailView.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemonURL: String
    @StateObject private var viewModel = PokemonDetailViewModel()

    var body: some View {
        ScrollView {
            if let pokemon = viewModel.pokemon {
                VStack(spacing: 20) {
                    Text(pokemon.name.capitalized)
                        .font(.largeTitle)
                    
                    let sprites = pokemon.sprites
                    let nestedSprites = [sprites?.other?.home, sprites?.other?.officialArtwork, sprites?.other?.showdown]

                    let urls: [String] = [
                        sprites?.frontDefault,
                        sprites?.backDefault,
                        sprites?.frontShiny,
                        sprites?.backShiny
                    ]
                    .compactMap { $0 } + nestedSprites.flatMap { spriteSet in
                        return [
                            spriteSet?.frontDefault,
                            spriteSet?.backDefault,
                            spriteSet?.frontShiny,
                            spriteSet?.backShiny
                        ].compactMap { $0 }
                    }

                    // Display gallery with collected URLs
                    PokemonSpriteGalleryView(imageUrls: urls)
                    
                }
                .padding()
            } else {
                ProgressView("Loading...")
            }
        }
        .onAppear {
            viewModel.fetchDetails(for: pokemonURL)
        }
    }
}


#Preview {
    PokemonDetailView(pokemonURL: "https://pokeapi.co/api/v2/pokemon/1/")
}
