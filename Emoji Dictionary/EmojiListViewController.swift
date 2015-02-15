//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Merritte on 2/7/15.
//  Copyright (c) 2015 Merritte. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var emojis = ["🐨","🐷","👍","👻","👲","🗿","🐶","🌞","👽","💩","🐘","🐙","🙊","🙈","🙉"]
    var definitions = ["Koala","Pig","Thumbs Up","Ghost","Asian Boy","Easter Island Head","Dog","Sunshine","Alien","Poo","Elephant","Octopus","Speak No Evil","See No Evil","Hear No Evil"]

    
    var emoji = "🌽"
    var definition = "test"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.emojis.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        cell.textLabel!.text = self.emojis[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.emojis[indexPath.row]
        self.definition = self.definitions[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
        detailViewController.emoji = self.emoji
        detailViewController.definition = self.definition
    }
    
}