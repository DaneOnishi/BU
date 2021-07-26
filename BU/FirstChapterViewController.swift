//
//  FirstChapterViewController.swift
//  BU
//
//  Created by Daniella Onishi on 23/07/21.
//

import UIKit

class FirstChapterViewController: UIViewController {
    
    var monsterTalk: MonsterTalk?
    @IBOutlet weak var monsterWhoIsTalking: UIImageView!
    @IBOutlet weak var monsterTalksWhat: UILabel!
    @IBOutlet weak var ghostDialogueLabel: UILabel!
    var dialogues: [Dialogue] = []
    var autoPlaying = false
    //var whoTalks = DialogueOwner
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let monsterTalk = monsterTalk else {return}
        
      //  monsterWhoIsTalking.image = UIImage(named: monsterTalk.monsterImageName)
        dialogues = monsterTalk.defaultDialogue
        startAutoplay()
        
    }
    
    func setup(monsterTalk: MonsterTalk) {
        self.monsterTalk = monsterTalk
        dialogues = monsterTalk.defaultDialogue
    }
    
    func updateViewToDialogue(dialogue: Dialogue, completion: (() -> Void)? = nil) {
        switch dialogue.dialogueOwner {
        case .ghost:
            ghostDialogueLabel.animate(newText: dialogue.text, characterDelay: 0.06) {
                completion?()
            }
        default:
            monsterTalksWhat.animate(newText: dialogue.text, characterDelay: 0.06) {
                completion?()
            }
            monsterWhoIsTalking.image = UIImage(named: dialogue.dialogueOwner.whoIsTalking)
        }
    }
    
    func startAutoplay() {
        autoPlaying = true
        
        presentNextDialogue {
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
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            guard let doorsVC = storyboard.instantiateViewController(identifier: "DoorsViewController") as? DoorsViewController else {
                return
            }
            doorsVC.modalPresentationStyle = .fullScreen
            self.present(doorsVC, animated: true, completion: nil)
            return
        }
        updateViewToDialogue(dialogue: dialogues.removeFirst()) {
            completion?()
        }
    }
}


