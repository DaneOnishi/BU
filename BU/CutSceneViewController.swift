//
//  CutSceneViewController.swift
//  BU
//
//  Created by Daniella Onishi on 24/07/21.
//

import UIKit

class CutSceneViewController: UIViewController {

    @IBOutlet weak var sceneOneImage: UIImageView!
    @IBOutlet weak var sceneTwoImage: UIImageView!
    @IBOutlet weak var sceneThreeImage: UIImageView!
    @IBOutlet weak var sceneOneText: UITextView!
    @IBOutlet weak var sceneTwoText: UITextView!
    @IBOutlet weak var sceneThreeText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.6,
                       delay: 4, // tempo que fica tela 1
                       options: .curveEaseInOut) {
            self.sceneOneImage.alpha = 0
            self.sceneTwoImage.alpha = 1
            self.sceneOneText.alpha = 0
            self.sceneTwoText.alpha = 1
            
        } completion: { _ in
            UIView.animate(withDuration: 0.6,
                           delay: 4, // tempo que fica tela 2
                           options: .curveEaseInOut) {
                self.sceneTwoImage.alpha = 0
                self.sceneThreeImage.alpha = 1
                self.sceneTwoText.alpha = 0
                self.sceneThreeText.alpha = 1
            } completion: { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) { // tempo que fica tela 3
                    // ir para a prox tela
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    guard let firstChapterVC = storyboard.instantiateViewController(identifier: "FirstChapterViewController") as? FirstChapterViewController else {
                        return
                    }
                    firstChapterVC.modalPresentationStyle = .fullScreen
                    firstChapterVC.monsterTalk = ModelSingleton.shared.monsterDialogues
                    self.present(firstChapterVC, animated: true, completion: nil)
                }
            }
        }
    }
}
