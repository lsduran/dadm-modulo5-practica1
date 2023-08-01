//
//  PokemonTableViewCell.swift
//  MVC
//
//  Created by Luis Sergio Duran Arenas on 29/07/23.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet var imgPokemon: UIImageView!
    
    @IBOutlet var lblPokemon: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
