//
//  Pokemon.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import Foundation

struct Pokemon: Decodable {
    let id: Int!
    let name: String!
    let sprites: PokemonSprites!
}

extension Pokemon {
    static var mock: Pokemon {
        Pokemon(
            id: 1,
            name: "bulbasaur",
            sprites: PokemonSprites(
                frontDefault: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/1.png",
                backDefault: nil,
                frontShiny: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/shiny/1.png",
                backShiny: nil,
                other: OtherSprites(
                    home: nil,
                    officialArtwork: nil,
                    showdown: nil
                )
            )
        )
    }
}
