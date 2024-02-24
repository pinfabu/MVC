//
//  PokemonViewController.swift
//  MVC
//
//  Created by Juan Carlos Díaz Valenzuela on 23/02/24.
//

import UIKit

class PokemonViewController: UIViewController {

    let pokemonDataManager = PokemonDataManager()
    
    var selectedPokemon : Pokemon?
    
    @IBOutlet weak var pokemonTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pokemonDataManager.fetch()
        
        
        
        /*print(pokemonDataManager.countPokemons())
        var i = 0
        while i < pokemonDataManager .countPokemons(){
            print(pokemonDataManager.getPokemon(at: i))
            i += 1
        }*/
        // Do any additional setup after loading the view.
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

extension PokemonViewController : UITableViewDelegate, UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemonDataManager.countPokemons()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as! PokemonCell
        let pokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        cell.pokemonImage.image = UIImage(named: pokemon.image)
        cell.pokemonLabel.text = pokemon.name

        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Pokemons"
//    }
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIImageView(image: UIImage(named: "Pokemon"))
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return CGFloat(80.0)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row selected \(indexPath.row)")
        selectedPokemon = pokemonDataManager.getPokemon(at: indexPath.row)
        
        self.performSegue(withIdentifier: "detailSegue", sender: Self.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PokemonDetailViewController
        destination.receivedPokemon = selectedPokemon
    }
    
}

extension PokemonViewController {
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        // Verifica si el modo de interfaz cambió
        if self.traitCollection.hasDifferentColorAppearance(comparedTo: previousTraitCollection) {
            // Actualiza el color del texto en todas las celdas visibles
            if let visibleCells = self.pokemonTableView.visibleCells as? [PokemonCell] {
                for cell in visibleCells {
                    updateCellTextColor(cell)
                }
            }
        }
    }
    
    private func updateCellTextColor(_ cell: PokemonCell) {
        // Obtener el modo de interfaz actual
        let interfaceStyle = self.getCurrentInterfaceStyle()
        if interfaceStyle == .dark {
            cell.pokemonLabel.textColor = UIColor.white
        } else {
            cell.pokemonLabel.textColor = UIColor.black
        }
    }
    
    private func getCurrentInterfaceStyle() -> UIUserInterfaceStyle {
        if #available(iOS 13.0, *) {
            return self.traitCollection.userInterfaceStyle
        } else {
            return .light
        }
    }
}
