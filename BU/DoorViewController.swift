//
//  DoorViewController.swift
//  BU
//
//  Created by Daniella Onishi on 23/07/21.
//

import UIKit

class DoorViewController: UIViewController {
    
    var door: Door?
    
    @IBOutlet weak var ghostDialogueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // usar a door para personalizar a view :)
        
        guard let door = door else{ return }
        ghostDialogueLabel.text = door.defaultDialogue[0].text
    }
    
    func setup(door: Door) {
        self.door = door
    }
}
