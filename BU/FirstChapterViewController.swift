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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        guard let monsterTalk = monsterTalk else {return}
        monsterTalksWhat.text = monsterTalk.defaultDialogue[0].text

    }
}
