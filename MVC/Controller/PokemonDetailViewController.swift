//
//  PokemonDetailViewController.swift
//  MVC
//
//  Created by Juan Carlos Díaz Valenzuela on 24/02/24.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    var receivedPokemon : Pokemon?

    @IBOutlet weak var pokemonName: UILabel!

    @IBOutlet weak var pokemonImageModal: UIImageView!
    
    @IBOutlet weak var pokemonLabelAbility: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Pokemon: ", receivedPokemon!)
        
        pokemonName.text = receivedPokemon?.name
        
        pokemonImageModal.image = UIImage(named: receivedPokemon!.image)
        
        pokemonLabelAbility.text = receivedPokemon?.ability
    
    }
    
    
    @IBAction func closeModal(_ sender: Any) {
        dismiss(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

