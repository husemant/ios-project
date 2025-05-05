//
//  PokemonListView.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import SwiftUI

struct PokemonListView: View {
    @StateObject private var viewModel = PokemonListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.pokemonList, id: \.name) { entry in
                NavigationLink(destination: PokemonDetailView(pokemonURL: entry.url)) {
                    Text(entry.name.capitalized)
                }
            }
            .navigationTitle("Pokémon")
            .onAppear {
                viewModel.fetchPokemon()
            }
        }
    }
}

#Preview {
    PokemonListView()
}
