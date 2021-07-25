//
//  DoorViewController.swift
//  BU
//
//  Created by Daniella Onishi on 23/07/21.
//

import UIKit

class DoorViewController: UIViewController {
    
    var door: Door?
    var soulPoints = 0
    
    @IBOutlet weak var ghostDialogueLabel: UILabel!
    @IBOutlet weak var talkingBalloon: UIImageView!
    @IBOutlet weak var userOptionContinue: UIButton!
    @IBOutlet weak var userOptionScare: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // usar a door para personalizar a view :)
        
        guard let door = door else{ return }
        ghostDialogueLabel.text = door.defaultDialogue[0].text
        
        talkingBalloon.image = UIImage(named: door.ghostImageName)
    }
    
    func setup(door: Door) {
        self.door = door
    }
}
