//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Merritte on 2/15/15.
//  Copyright (c) 2015 Merritte. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "⛵️"
    var definition = "test test"
    
    override func viewDidLoad(){
        self.emojiLabel.text = self.emoji
        self.definitionLabel.text = self.definition
    }
    
    
}