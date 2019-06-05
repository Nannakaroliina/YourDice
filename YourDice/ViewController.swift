//
//  ViewController.swift
//  YourDice
//
//  Created by Nanna Setämaa on 30/05/2019.
//  Copyright © 2019 Nanna Setämaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateDices()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {

        updateDices()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        updateDices()
        
    }
    
    func updateDices() {
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceOne.image = UIImage(named: diceArray[randomDiceIndex1])
        diceTwo.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
}

