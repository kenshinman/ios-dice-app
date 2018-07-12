//
//  ViewController.swift
//  Dicee
//
//  Created by KEHINDE ORILOGBON on 12/07/2018.
//  Copyright © 2018 KEHINDE ORILOGBON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1:Int = 0
    var randomDiceIndex2:Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    //dice on the left
    @IBOutlet weak var diceImageView1: UIImageView!
    //dice on the right
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollDice()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func rollDice() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        // diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1 + 1)")
        // diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2 + 1)")
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }

    
    @IBAction func rollButtonPressed(_ sender: Any) {
        rollDice()
    }
    
    //TODO: create start rolling and end rolling events
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
        
        
    }
}

