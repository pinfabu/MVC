//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Juan Carlos Díaz Valenzuela on 23/02/24.
//

import Foundation

class PokemonDataManager {
    private var pokemons : [Pokemon] = []
    
    
    //data source array :P
        let pokemonsArray = [
            ["image":"0", "name": "Wartortle", "ability" : "Powers up grass-type moves"],
            ["image":"1", "name": "Bulbasaur", "ability" : "Powers up grass-type moves"],
            ["image":"2", "name": "Blastoise", "ability" : "Powers up water-type moves"],
            ["image":"3", "name":"Butterfree", "ability" : "Boosts the Pokemon's accuracy"],
            ["image":"4", "name":"Ivysaur", "ability" : "Strengthens Grass moves to inflict 1.5× damage at 1/3 max HP or less"],
            ["image":"5", "name":"Jigglypuf", "ability" : "Cute Charm"],
            ["image":"6", "name":"Charmander", "ability" : "Powers up fire-type moves when the Pokemon is in trouble"],
            ["image":"7", "name":"Meowth", "ability" : "walk on its hind legs;"],
            ["image":"8", "name":"Alacazam", "ability" : "able to use all forms of psychic abilities"],
            ["image":"9", "name":"Pidgey", "ability" : "Keen Eye"],
            ["image":"10", "name":"Raichu", "ability" : "Contact with the Pokemon may cause paralysis"],
            ["image":"11", "name":"Rattata", "ability" : "Guts, Run Away"],
            ["image":"12", "name":"Vaporeon", "ability" : "Restores HP if hit by a water-type move"],
            ["image":"13", "name":"Jynx", "ability" : "Oblivious, Forewarn"],
            ["image":"14", "name":"Venusaur", "ability" : "convert sunlight into energy"],
            ["image":"15", "name":"Linea", "ability" : "Powerfull"],
            ["image":"16", "name":"Slowbro", "ability" : "capable of learning the move Shell Side Arm"],
            ["image":"17", "name":"Dewgong", "ability" : "Thick Fat Hydration"],
            ["image":"18", "name":"Spearow", "ability" : "Prevents other Pokemon from lowering accuracy"],
            ["image":"19", "name":"Wigglytuff", "ability" : "Cute Charm"],
            ["image":"20", "name":"Scyther", "ability" : "Swarm, Technician"],
            ["image":"21", "name":"Golduk", "ability" : "Cloud Nine, Damp"],
            ["image":"22", "name":"Lapras", "ability" : "Shell Armor, Water Absorb"],
            ["image":"23", "name":"Sandshrew", "ability" : "Boosts the Pokemon's evasion in a sandstorm"]
            ]

    
    func fetch() {
        for pokemon in pokemonsArray {
            pokemons.append(Pokemon(dict: pokemon))
        }
    }
    
    func getPokemon(at index : Int) -> Pokemon {
        return pokemons[index]
    }
    
    func countPokemons() -> Int {
        return pokemons.count
    }
}
