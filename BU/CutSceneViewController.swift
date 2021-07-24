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
        
        UIView.animate(withDuration: 0.6,
                       delay: 6, // tempo que fica tela 1
                       options: .curveEaseInOut) {
            self.sceneOneImage.alpha = 0
            self.sceneTwoImage.alpha = 1
            self.sceneOneText.alpha = 0
            self.sceneTwoText.alpha = 1
            
        } completion: { _ in
            UIView.animate(withDuration: 0.6,
                           delay: 6, // tempo que fica tela 2
                           options: .curveEaseInOut) {
                self.sceneTwoImage.alpha = 0
                self.sceneThreeImage.alpha = 1
                self.sceneTwoText.alpha = 0
                self.sceneThreeText.alpha = 1
            } completion: { _ in
                DispatchQueue.main.asyncAfter(deadline: .now() + 6) { // tempo que fica tela 3
                    // ir para a prox tela
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    guard let firstChapterVC = storyboard.instantiateViewController(identifier: "FirstChapterViewController") as? FirstChapterViewController else {
                        return
                    }
                    firstChapterVC.modalPresentationStyle = .fullScreen
                    self.present(firstChapterVC, animated: true, completion: nil)                }
            }
        }


        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK o segundo melhor mentor: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
