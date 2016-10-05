//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var EmojiLabel: UILabel!
    
    @IBOutlet weak var TextLabel: UILabel!
    
    var dogString: String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        EmojiLabel.text = getEmojiFromString()
        TextLabel.text = dogString
        
    }
    
    func getEmojiFromString() -> String {
        switch dogString {
        case "Bethoveen":
           return "🦀"
        case "Mozart":
            return "🐍"
        case "Bach":
            return "🐢"
        case "Chopin":
            return "🐺"
        case "Amadeus":
            return "🐗"
        case "Wolfgang":
            return "🦄"
        case "Toto":
            return "🐝"
        case "Spot":
            return "🐛"
        default:
            return "🐺"
        }
        
        
    }
    
}
