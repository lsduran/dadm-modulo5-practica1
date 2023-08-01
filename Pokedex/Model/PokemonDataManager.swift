//
//  PokemonDataManager.swift
//  MVC
//
//  Created by Luis Sergio Duran Arenas on 29/07/23.
//

import Foundation

class PokemonDataManager {
    //data source array :P
    let pokemonsArray = [
        ["image":"0", "name": "Wartortle", "abilities": ["Cabezazo", "Protección", "Pistola de agua", "Tacleo"]] as [String : Any],
        ["image":"1", "name": "Bulbasaur", "abilities": ["Látigo", "Hojas navaja", "Gruñido", "Tacleo"]] as [String : Any],
        ["image":"2", "name": "Blastoise", "abilities": ["Cabezazo", "Defensa de hierro", "Hidrobomba", "Hidropulso"]] as [String : Any],
        ["image":"3", "name":"Butterfree", "abilities": ["Remolino", "Confusión", "Zumbido", "Tajo aéreo"]] as [String : Any],
        ["image":"4", "name":"Ivysaur", "abilities": ["Polvo veneno", "Síntesis", "Doble filo", "Somnífero"]] as [String : Any],
        ["image":"5", "name":"Jigglypuff", "abilities": ["Canto", "Bofetón", "Voz cautivadora"]] as [String : Any],
        ["image":"6", "name":"Charmander", "abilities": ["Ascuas", "Arañazo", "Furia dragón"]] as [String : Any],
        ["image":"7", "name":"Meowth", "abilities": ["Arañazo", "Día de pago", "Chirrido", "Golpes furia"]] as [String : Any],
        ["image":"8", "name":"Alakazam", "abilities": ["Psíquico", "Premonición", "Telequinesis", "Psicorrayo"]] as [String : Any],
        ["image":"9", "name":"Pidgey", "abilities": ["Tacleo", "Tornado"]] as [String : Any],
        ["image":"10", "name":"Raichu", "abilities": ["Impactrueno", "Látigo", "Ataque rápido", "Trueno"]] as [String : Any],
        ["image":"11", "name":"Rattata", "abilities": ["Ataque rápido", "Látigo"]] as [String : Any],
        ["image":"12", "name":"Vaporeon", "abilities": ["Hidro pulso", "Rayo aurora", "Niebla", "Ataque arena"]] as [String : Any],
        ["image":"13", "name":"Jynx", "abilities": ["Beso amoroso", "Lengüetazo", "Polvo nieve", "Ventisca"]] as [String : Any],
        ["image":"14", "name":"Venusaur", "abilities": ["Rayo solar", "Látigo cepa", "Hojas navaja", "Somnífero"]] as [String : Any],
        ["image":"15", "name":"Vulpix", "abilities": ["Ascuas", "Látigo", "Llamarada"]] as [String : Any],
        ["image":"16", "name":"Slowbro", "abilities": ["Confusión", "Cabezazo", "Danza lluvia", "Psíquico"]] as [String : Any],
        ["image":"17", "name":"Dewgong", "abilities": ["Rayo de hielo", "Acua cola", "Rayo aurora", "Velo sagrado"]] as [String : Any],
        ["image":"18", "name":"Spearow", "abilities": ["Ataque furia", "Golpe aéreo", "Gruñido"]] as [String : Any],
        ["image":"19", "name":"Wigglytuff", "abilities": ["Rizo defensa", "Doble bofetón", "Canto", "Anulación"]] as [String : Any],
        ["image":"20", "name":"Scyther", "abilities": ["Doble equipo", "Tijera X", "Tajo aéreo", "Danza espada"]] as [String : Any],
        ["image":"21", "name":"Golduck", "abilities": ["Psíquico", "Hidrobomba", "Confusión", "Psicorrayo"]] as [String : Any],
        ["image":"22", "name":"Lapras", "abilities": ["Rayo de hielo", "Surf", "Descanso", "Canto mortal"]] as [String : Any],
        ["image":"23", "name":"Sandshrew", "abilities": ["Rizo defensa", "Desenrollar", "Magnitud"]] as [String : Any]
    ]
    
    private var pokemons : [Pokemon] = []
    
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
    
    func getAbilitiesFromPokemon(at index : Int) -> [String] {
        return pokemonsArray[index]["abilities"] as! [String]
    }
}
