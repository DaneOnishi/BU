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
    
    var karma = 0
    var soulPoints = 0
    
    var meterImageName: String {
        switch karma {
        case (-100)...(-2):
            return "Meter-1"
        case -1:
            return "Meter-2"
        case 0:
            return "Meter-3"
        case 1:
            return "Meter-4"
        case 2:
            return "Meter-5"
        case 3...100:
            return "Meter-6"
        default:
            return "Meter-initial"
        }
    }
    
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
    
    // incrementar dialogos posteriormente
    
    var doors: [Door] = [
        Door(kidImageName: "Jipo",
             ghostImageName: "Talking-Balloon",
             defaultDialogue: [
                Dialogue(dialogueOwner: .jipo, text: "oo-oi quem está ai?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .jipo, text: "o-o-que é você?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ghost, text: "ei eu estou falando com você"),
                Dialogue(dialogueOwner: .ghost, text: "jipo?"),
                Dialogue(dialogueOwner: .jipo, text: "Eu já estou aqui há tanto tempo"),
                Dialogue(dialogueOwner: .jipo, text: "É a primeira conversa que eu tenho em anos"),
                Dialogue(dialogueOwner: .ghost, text: "anos?"),
                Dialogue(dialogueOwner: .jipo, text: "eu ainda me pergunto por que me deixaram aqui"),
             ],
             scareDialogue: [
                Dialogue(dialogueOwner: .ghost, text: "HAHAHAHAHAHAHAHAHAHA"),
                Dialogue(dialogueOwner: .jipo, text: "EI PARA COM ISSO"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .jipo, text: "so-socorro"),
                Dialogue(dialogueOwner: .jipo, text: "..."),
             ]),
        
        Door(kidImageName: "Irina",
             ghostImageName: "Talking-Balloon",
             defaultDialogue: [
                Dialogue(dialogueOwner: .irina, text: "oo-oi quem está ai?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .irina, text: "o-o-que é você?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ghost, text: "ei eu estou falando com você"),
                Dialogue(dialogueOwner: .ghost, text: "Irina?"),
                Dialogue(dialogueOwner: .irina, text: "Você não é humano é?"),
                Dialogue(dialogueOwner: .ghost, text: "Humano?"),
                Dialogue(dialogueOwner: .ghost, text: "O que eu sou?")
             ],
             scareDialogue: [
                Dialogue(dialogueOwner: .ghost, text: "HAHAHAHAHAHAHAHAHAHA"),
                Dialogue(dialogueOwner: .irina, text: "EI PARA COM ISSO"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .irina, text: "so-socorro"),
                Dialogue(dialogueOwner: .irina, text: "..."),
             ]),
        
        Door(kidImageName: "Kuka",
             ghostImageName: "Talking-Balloon",
             defaultDialogue: [
                Dialogue(dialogueOwner: .kuka, text: "oo-oi quem está ai?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .kuka, text: "o-o-que é você?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ghost, text: "ei eu estou falando com você"),
                Dialogue(dialogueOwner: .ghost, text: "kuka?"),
                Dialogue(dialogueOwner: .kuka, text: "Você não é humano é?"),
                Dialogue(dialogueOwner: .ghost, text: "Humano?"),
                Dialogue(dialogueOwner: .ghost, text: "O que eu sou?")
             ],
             scareDialogue: [
                Dialogue(dialogueOwner: .ghost, text: "HAHAHAHAHAHAHAHAHAHA"),
                Dialogue(dialogueOwner: .kuka, text: "EI PARA COM ISSO"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .kuka, text: "so-socorro"),
                Dialogue(dialogueOwner: .kuka, text: "..."),
             ]),
        
        Door(kidImageName: "Dorime",
             ghostImageName: "Talking-Balloon",
             defaultDialogue: [
                Dialogue(dialogueOwner: .dorime, text: "oo-oi quem está ai?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .dorime, text: "o-o-que é você?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ghost, text: "ei eu estou falando com você"),
                Dialogue(dialogueOwner: .ghost, text: "dorime?")
             ],
             scareDialogue: [
                Dialogue(dialogueOwner: .ghost, text: "HAHAHAHAHAHAHAHAHAHA"),
                Dialogue(dialogueOwner: .dorime, text: "EI PARA COM ISSO"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .dorime, text: "so-socorro"),
                Dialogue(dialogueOwner: .dorime, text: "..."),
             ]),
        
        Door(kidImageName: "Ameno",
             ghostImageName: "Talking-Balloon",
             defaultDialogue: [
                Dialogue(dialogueOwner: .ameno, text: "oo-oi quem está ai?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ameno, text: "o-o-que é você?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ghost, text: "ei eu estou falando com você"),
                Dialogue(dialogueOwner: .ghost, text: "ameno?")
             ],
             scareDialogue: [
                Dialogue(dialogueOwner: .ghost, text: "HAHAHAHAHAHAHAHAHAHA"),
                Dialogue(dialogueOwner: .ameno, text: "EI PARA COM ISSO"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ameno, text: "so-socorro"),
                Dialogue(dialogueOwner: .ameno, text: "..."),
             ]),
        
        Door(kidImageName: "Ratto",
             ghostImageName: "Talking-Balloon",
             defaultDialogue: [
                Dialogue(dialogueOwner: .ratto, text: "oo-oi quem está ai?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ratto, text: "o-o-que é você?"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ghost, text: "ei eu estou falando com você"),
                Dialogue(dialogueOwner: .ghost, text: "ratto?")
             ],
             scareDialogue: [
                Dialogue(dialogueOwner: .ghost, text: "HAHAHAHAHAHAHAHAHAHA"),
                Dialogue(dialogueOwner: .ratto, text: "EI PARA COM ISSO"),
                Dialogue(dialogueOwner: .ghost, text: "..."),
                Dialogue(dialogueOwner: .ratto, text: "so-socorro"),
                Dialogue(dialogueOwner: .ratto, text: "..."),
             ])
    ]
    
    var monsterDialogues: MonsterTalk =
        MonsterTalk(defaultDialogue: [
                        Dialogue(dialogueOwner: .wraith, text: "Entao novato é o primeiro dia do novo membro novo"),
                        Dialogue(dialogueOwner: .jinn, text: "ele nao me parece muito assustador"),
                        Dialogue(dialogueOwner: .poltergeist, text: "você provavelmente sabe como funcionam as coisas por aqui certo?"),
                        Dialogue(dialogueOwner: .wraith, text: "escolha um quarto, assuste uma crianca HA"),
                        Dialogue(dialogueOwner: .jinn, text: "É facinho, facinho, nada demais"),
                        Dialogue(dialogueOwner: .poltergeist, text: "enfim, lembre-se, você tem uma noite para provar que é realmente assustador"),
                        Dialogue(dialogueOwner: .wraith, text: "Se voltar sem ter assustador aquelas crianças, haverão consequências...")])
    
    
    func didScareKid() {
        karma += 1
        soulPoints += 1
    }
    
    func didNotScareKid() {
        karma -= 1
    }
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
    internal init(defaultDialogue: [Dialogue]) {
        self.defaultDialogue = defaultDialogue
    }
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
    case ratto
    case dorime
    
    var whoIsTalking: String {
        switch self {
        case .wraith:
            return "Wraith"
        case .poltergeist:
            return "Poltergeist"
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
        case .ratto:
            return "Ratto"
        case .dorime:
            return "Dorime"
        }
    }
}

enum GhostStatus {
    case neutral
    case good
    case bad
    
    var ghostPersonality: String {
        switch self {
        case .good:
            return "Nice-Talking-Balloon"
        case .bad:
            return "Scary-Talking-Balloon"
        default:
            return "Talking-Balloon"
        }
    }
}
