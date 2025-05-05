//
//  PokemonListResponse.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import Foundation

struct PokemonListResponse: Codable {
    let results: [PokemonEntry]
}

struct PokemonEntry: Codable {
    let name: String
    let url: String
}
