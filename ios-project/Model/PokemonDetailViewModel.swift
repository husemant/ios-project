//
//  PokemonDetailViewModel.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import Foundation

class PokemonDetailViewModel: ObservableObject {
    @Published var pokemon: Pokemon?

    func fetchDetails(for url: String) {
        APIService.shared.fetchPokemonDetails(url: url) { [weak self] pokemon in
            DispatchQueue.main.async {
                self?.pokemon = pokemon
            }
        }
    }
}
