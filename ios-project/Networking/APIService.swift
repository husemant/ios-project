//
//  APIService.swift
//  ios-project
//
//  Created by Tanner Huseman on 5/4/25.
//
import Foundation

class APIService {
    static let shared = APIService()
    private init() {}

    func fetchAllPokemon(completion: @escaping ([PokemonEntry]) -> Void) {
        let url = URL(string: "https://pokeapi.co/api/v2/pokemon?limit=151")! // setting to first generation but can change limit to 2000 for all pokemon

        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else { return }
            do {
                let decoded = try JSONDecoder().decode(PokemonListResponse.self, from: data)
                completion(decoded.results)
            } catch {
                print(error)
            }
        }.resume()
    }

    func fetchPokemonDetails(url: String, completion: @escaping (Pokemon) -> Void) {
        guard let url = URL(string: url) else { return }

        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else { return }
            do {
                let decoded = try JSONDecoder().decode(Pokemon.self, from: data)
                completion(decoded)
            } catch {
                print(error)
            }
        }.resume()
    }
}
