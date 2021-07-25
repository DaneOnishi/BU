//
//  BadEndingSceneViewController.swift
//  BU
//
//  Created by Daniella Onishi on 24/07/21.
//

import UIKit

class BadEndingSceneViewController: UIViewController {
    @IBOutlet weak var badEndingSceneImageOne: UIImageView!
    @IBOutlet weak var badEndingSceneTwo: UIImageView!
    @IBOutlet weak var badEndingSceneThree: UIImageView!
    @IBOutlet weak var badEndingTextOne: UITextView!
    @IBOutlet weak var badEndingTextTwo: UITextView!
    @IBOutlet weak var badEndingTextThree: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.6,
                       delay: 6,
                       options: .curveEaseInOut) {
            self.badEndingSceneImageOne.alpha = 0
            self.badEndingSceneTwo.alpha = 1
            self.badEndingTextOne.alpha = 0
            self.badEndingTextTwo.alpha = 1
            
        } completion: { _ in
            UIView.animate(withDuration: 0.6, delay: 6, options: .curveEaseInOut) {
                self.badEndingSceneTwo.alpha = 0
                self.badEndingSceneThree.alpha = 1
                self.badEndingTextTwo.alpha = 0
                self.badEndingSceneThree.alpha = 1
            }
        }
    }
}
