//
//  ViewController.swift
//  IDActionsIDOutlets
//
//  Created by DISMOV on 26/08/22.
//

import UIKit

let pokemon: Array = ["Wartortle", "Bulbasaur", "Blastoise"]

class ViewController: UIViewController {

    @IBOutlet weak var TextLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Se ejecutó la carga de la vista")
        TextLabel.text = "Bulbasaur"
    }

    @IBAction func ActionButton(_ sender: UIButton) {
        let x : Int = Int.random(in: 0...2)
        let xNSNumber = x as NSNumber
        let xString : String = xNSNumber.stringValue
        imageView.image = UIImage.init(named: xString)
        TextLabel.text = pokemon[x]
    }
    
}

