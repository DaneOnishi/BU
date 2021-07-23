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

enum DialogueOwner {
    case ghost
    case kid
}

