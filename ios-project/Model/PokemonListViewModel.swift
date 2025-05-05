//
//  PokemonListViewModel.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import Foundation

class PokemonListViewModel: ObservableObject {
    @Published var pokemonList: [PokemonEntry] = []

    func fetchPokemon() {
        APIService.shared.fetchAllPokemon { [weak self] results in
            DispatchQueue.main.async {
                self?.pokemonList = results
            }
        }
    }
}
