//
//  UILabel+.swift
//  BU
//
//  Created by Daniella Onishi on 25/07/21.
//

import UIKit

extension UILabel {
    func animate(newText: String, characterDelay: TimeInterval, completion: (() -> Void)? = nil) {
        DispatchQueue.main.async {
            self.text = ""
            for (index, character) in newText.enumerated() {
                if index == newText.count - 1 {
                    DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                        self.text?.append(character)
                        completion?()
                    }
                } else {
                    DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                        self.text?.append(character)
                    }
                }
            }
        }
    }
}
