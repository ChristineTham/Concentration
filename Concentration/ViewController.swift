//
//  ViewController.swift
//  Concentration
//
//  Created by Chris Tham on 21/11/17.
//  Copyright © 2017 Hello Tham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0 {
        didSet {
            FlipCountLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojiChoices = ["🎃", "👻", "🎃", "👻"]
    
    @IBOutlet weak var FlipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }
    }
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🎃", on: sender)
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        // print("flipCard(withEmoji: \(emoji)")
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}

