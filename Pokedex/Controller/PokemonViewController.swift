//
//  PokemonViewController.swift
//  MVC
//
//  Created by Luis Sergio Duran Arenas on 29/07/23.
//

import UIKit

class PokemonViewController: UIViewController {
    
    @IBOutlet var pknTableView: UITableView!
    
    let dataManager = PokemonDataManager()
    
    var selectedPokemon : Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        dataManager.fetch()
    }
        
    // Una mark (marca ) sirve para identificar fragmentos de código de manera más rápida
    // Hacer clic en el nombre de esta clase en la parte superior de la vista de edición
    // MARK: AQUÍ ESTOY
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

// MARK: Extensions
extension PokemonViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pokeCell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonTableViewCell
        
        let pokemon = dataManager.getPokemon(at: indexPath.row)
        
        pokeCell.imgPokemon.image = UIImage(named: pokemon.image ?? "0")
        
        pokeCell.lblPokemon.text = pokemon.name
        
        return pokeCell
    }
    
    /*
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Pokedex"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { //CoreGraphics Float
        return CGFloat.init(60.0)
    }
     */
     
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView.init(image: UIImage(named: "Pokemon"))
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected: ", indexPath.row)
        selectedPokemon = dataManager.getPokemon(at: indexPath.row)
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
    }
}
