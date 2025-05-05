//
//  PokemonSprites.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//

import Foundation

//struct PokemonSprites: Codable {
//    let frontDefault: String?
//    let backDefault: String?
//    let other: OtherSprites?
//    let versions: [String: [String: GenerationSprites]]?
//
//    enum CodingKeys: String, CodingKey {
//        case frontDefault = "front_default"
//        case backDefault = "back_default"
//        case other
//        case versions
//    }
//}
//
//struct OtherSprites: Codable {
//    let officialArtwork: Artwork?
//
//    enum CodingKeys: String, CodingKey {
//        case officialArtwork = "official-artwork"
//    }
//}
//
//struct Artwork: Codable {
//    let frontDefault: String?
//    let frontShiny: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case frontDefault = "front_default"
//        case frontShiny = "front_shiny"
//    }
//}
//
//struct GenerationSprites: Codable {
//    let frontDefault: String?
//}

import Foundation

struct PokemonSprites: Decodable {
    let frontDefault: String?
    let backDefault: String?
    let frontShiny: String?
    let backShiny: String?
    let other: OtherSprites?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case backDefault = "back_default"
        case frontShiny = "front_shiny"
        case backShiny = "back_shiny"
        case other
    }
}

struct OtherSprites: Decodable {
    let home: SpriteSet?
    let officialArtwork: SpriteSet?
    let showdown: SpriteSet?

    enum CodingKeys: String, CodingKey {
        case home
        case officialArtwork = "official-artwork"
        case showdown
    }
}

struct SpriteSet: Decodable {
    let frontDefault: String?
    let frontShiny: String?
    let backDefault: String?
    let backShiny: String?

    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
        case frontShiny = "front_shiny"
        case backDefault = "back_default"
        case backShiny = "back_shiny"
    }
}

