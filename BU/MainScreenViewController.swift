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
    
    
//    @IBAction func startButton(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "HomeScreen", bundle: nil)
//        guard let cutSceneVC = storyboard.instantiateViewController(identifier: "CutSceneViewController") as? CutSceneViewController else {
//            return
//        }
//        cutSceneVC.modalPresentationStyle = .fullScreen
//        self.present(cutSceneVC, animated: true, completion: nil)
//    }


//    @IBAction func startButton(_ sender: Any) {
//        guard let cutSceneVC = storyboard?.instantiateViewController(identifier: "CutSceneViewController") as? CutSceneViewController else {
//            return
//        }
//        cutSceneVC.modalPresentationStyle = .fullScreen
//        self.present(cutSceneVC, animated: true, completion: nil)
//    }
}
