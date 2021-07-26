//
//  MainScreenViewController.swift
//  BU
//
//  Created by Daniella Onishi on 25/07/21.
//

import UIKit

class MainScreenViewController: UIViewController {
    
    @IBOutlet weak var mainScreenImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButton(_ sender: Any) {
        guard let cutSceneVC = storyboard?.instantiateViewController(identifier: "IntroOne") as? CutSceneViewController else {
            return
        }
        cutSceneVC.modalPresentationStyle = .fullScreen
        self.present(cutSceneVC, animated: true, completion: nil)
    }
}
