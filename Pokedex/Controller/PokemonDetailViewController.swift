//
//  PokemonDetailViewController.swift
//  MVC
//
//  Created by Luis Sergio Duran Arenas on 29/07/23.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    @IBOutlet var BtnClose: UIButton!
    
    @IBOutlet var lblPokemonName: UILabel!
    
    @IBOutlet var imgPokemon: UIImageView!
    
    var receivedPokemon : Pokemon?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        lblPokemonName.text = receivedPokemon?.name
        imgPokemon.image = UIImage(named: receivedPokemon?.image ?? "0")
    }
    
    
    @IBAction func CloseDetail(_ sender: UIButton) {
        dismiss(animated: true)
    }
}

extension PokemonDetailViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return receivedPokemon?.abilities?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let abilityCell = tableView.dequeueReusableCell(withIdentifier: "abilityCell", for: indexPath) as! AbilityTableViewCell
        
        abilityCell.lblName.text = "\(indexPath.row + 1). \(receivedPokemon?.abilities?[indexPath.row] ?? "")"
        
        return abilityCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Habilidades"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat { //CoreGraphics Float
        return CGFloat.init(40.0)
    }
}
