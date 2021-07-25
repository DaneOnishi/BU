//
//  GoodEndingViewController.swift
//  BU
//
//  Created by Daniella Onishi on 24/07/21.
//

import UIKit

class GoodEndingViewController: UIViewController {
    @IBOutlet weak var goodEndingImageSceneOne: UIImageView!
    @IBOutlet weak var goodEndingImageSceneTwo: UIImageView!
    @IBOutlet weak var goodEndingImageSceneThree: UIImageView!
    @IBOutlet weak var goodEndingTextSceneOne: UITextView!
    @IBOutlet weak var goodEndingTextSceneTwo: UITextView!
    @IBOutlet weak var goodEndingSceneThree: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 0.6,
                       delay: 6, // tempo que fica tela 1
                       options: .curveEaseInOut) {
            self.goodEndingImageSceneOne.alpha = 0
            self.goodEndingImageSceneTwo.alpha = 1
            self.goodEndingTextSceneOne.alpha = 0
            self.goodEndingTextSceneTwo.alpha = 1
            
        } completion: { _ in
            UIView.animate(withDuration: 0.6,
                           delay: 6,
                           options: .curveEaseInOut) {
                self.goodEndingImageSceneTwo.alpha = 0
                self.goodEndingImageSceneThree.alpha = 1
                self.goodEndingTextSceneTwo.alpha = 0
                self.goodEndingSceneThree.alpha = 1
            } 
        }
    }
}

