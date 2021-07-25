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
    var dialogues: [Dialogue] = []
    
    var scared = false
    
    @IBOutlet weak var ghostDialogueLabel: UILabel!
    @IBOutlet weak var talkingBalloon: UIImageView!
    @IBOutlet weak var userOptionContinue: UIButton!
    @IBOutlet weak var userOptionScare: UIButton!
    @IBOutlet weak var kidDialogueLabel: UILabel!
    @IBOutlet weak var kidImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // usar a door para personalizar a view :)
        guard let door = door else { return }
        
        talkingBalloon.image = UIImage(named: door.ghostImageName)
        kidImageView.image = UIImage(named: door.kidImageName)
        
        presentNextDialogue()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if scared {
            ModelSingleton.shared.didScareKid()
        } else {
            ModelSingleton.shared.didNotScareKid()
        }
    }
    
    func setup(door: Door) {
        self.door = door
        dialogues = door.defaultDialogue
    }
    
    func updateViewToDialogue(dialogue: Dialogue) {
        switch dialogue.dialogueOwner {
        case .ghost:
            ghostDialogueLabel.text = dialogue.text
        default:
            kidDialogueLabel.text = dialogue.text
        }
    }
    
    fileprivate func presentNextDialogue() {
        guard !dialogues.isEmpty else {
            dismiss(animated: true, completion: nil)
            return
        }
        
        updateViewToDialogue(dialogue: dialogues.removeFirst())
    }
    
    @IBAction func scarePressed(_ sender: Any) {
        dialogues = door?.scareDialogue ?? []
        scared = true
        presentNextDialogue()
        
        userOptionScare.isEnabled = false
        userOptionScare.alpha = 0.3
    }
    
    @IBAction func continuePressed(_ sender: Any) {
        presentNextDialogue()
    }
}
