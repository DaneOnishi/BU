//
//  Model.swift
//  BU
//
//  Created by Daniella Onishi on 22/07/21.
//

import UIKit

class ModelSingleton {
    static let shared = ModelSingleton()
    private init() {}
    
    var text: [String] = [
        "Então novato é o primeiro dia do novo membro novo no grupo",
        "De onde você veio?",
        "...",
        "Ele nao me parece muito assustador",
        "...",
        "Você provavelmente sabe como funcionam as coisas por aqui certo?",
        "...",
        "Escolha um quarto, assuste uma crianca HA",
        "É facinho facinho nada demais",
        "AAAAAAAAAAAAAAAA",
        "Que susto cara",
        "O novato ali é quieto demais, começou a me tirar do sério já",
        "Enfim, lembre-se, você tem uma noite para provar que é \nrealmente digno de ser um fantasma",
        "Se voltar sem ter assustado aquelas crianças\n ...haverão consequencias",
        "HAHAHAHAHAHAHAHA",
        "..."
    ]
    
    var firstChapterDialogue: [MonsterTalk] = [
        MonsterTalk(monsterImageName: "", defaultDialogue: [Dialogue(dialogueOwner: .wraith, text: "")])
    ]
    
    var doors: [Door] = [
        Door(kidImageName: "",
             ghostImageName: "",
             defaultDialogue: [
                Dialogue(dialogueOwner: .kid, text: "nada cringe este")
             ],
             scareDialogue: [
                Dialogue(dialogueOwner: .ghost, text: "HAHAHAHAHAHAHAHAHAHA")
             ])
    ]
}

struct Dialogue {
    var dialogueOwner: DialogueOwner
    var text: String
}

class Door {
    internal init(kidImageName: String, ghostImageName: String, defaultDialogue: [Dialogue], scareDialogue: [Dialogue]) {
        self.kidImageName = kidImageName
        self.ghostImageName = ghostImageName
        self.defaultDialogue = defaultDialogue
        self.scareDialogue = scareDialogue
    }
    
    var kidImageName: String
    var ghostImageName: String
    var defaultDialogue: [Dialogue]
    var scareDialogue: [Dialogue]
}

class MonsterTalk {
    internal init(monsterImageName: String, defaultDialogue: [Dialogue]) {
        self.monsterImageName = monsterImageName
        self.defaultDialogue = defaultDialogue
    }
    var monsterImageName: String
    var defaultDialogue: [Dialogue]
}

enum DialogueOwner {
    case ghost
    case wraith
    case poltergeist
    case jinn
    case ameno
    case irina
    case jipo
    case kuka
    case kid
    
    var whoIsTalking: String {
        switch self {
        case .wraith:
            return "Wraith"
        case .poltergeist:
            return "Poltergheist"
        case .irina:
            return "Jinn"
        case .jipo:
            return "Jipo"
        case .kuka:
            return "Kuka"
        case .ghost:
            return "Ghost"
        case .jinn:
            return "Jinn"
        case .ameno:
            return "Ameno"
        case .kid:
            return "DefaultKid"
        }
    }
}

enum GhostStatus {
    case neutral
    case good
    case bad
    
    var isGhostPersonality: String {
        switch self {
        case .good:
            return "GoodGhost"
        case .bad:
            return "BadGhost"
        default:
            return "NeutralGhost"
        }
    }
}
