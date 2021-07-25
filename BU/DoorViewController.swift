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
    var autoPlaying = false
    
    
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
        
        if ModelSingleton.shared.karma >= 4 {
            startAutoplay()
        } else {
            presentNextDialogue()
        }
      //:)
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
    
    fileprivate func checkReenableActions() {
        self.userOptionContinue.isEnabled = !autoPlaying
        self.userOptionScare.isEnabled = !self.scared && !autoPlaying
    }
    
    func updateViewToDialogue(dialogue: Dialogue, completion: (() -> Void)? = nil) {
        userOptionContinue.isEnabled = false
        userOptionScare.isEnabled = false
        switch dialogue.dialogueOwner {
        case .ghost:
            ghostDialogueLabel.animate(newText: dialogue.text, characterDelay: 0.06) {
                self.checkReenableActions()
                completion?()
            }
        default:
            kidDialogueLabel.animate(newText: dialogue.text, characterDelay: 0.06) {
                self.checkReenableActions()
                completion?()
            }
        }
    }
    
    func startAutoplay() {
        userOptionScare.isEnabled = false
        userOptionContinue.isEnabled = false
        autoPlaying = true
        
        presentNextDialogue {
            self.scare()
            self.eternalDialogue()
        }
    }
    
    func eternalDialogue() {
        presentNextDialogue {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.eternalDialogue()
            }
        }
    }
    
    fileprivate func presentNextDialogue(completion: (() -> Void)? = nil) {
        guard !dialogues.isEmpty else {
            dismiss(animated: true, completion: nil)
            return
        }
        
        updateViewToDialogue(dialogue: dialogues.removeFirst()) {
            completion?()
        }
    }
    
    fileprivate func scare() {
        dialogues = door?.scareDialogue ?? []
        scared = true
        
        userOptionScare.isEnabled = false
        userOptionScare.alpha = 0.3
    }
    
    @IBAction func scarePressed(_ sender: Any) {
        scare()
        
        presentNextDialogue()
    }
    
    @IBAction func continuePressed(_ sender: Any) {
        presentNextDialogue()
    }
}
