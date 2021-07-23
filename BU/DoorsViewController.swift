//
//  DoorsViewController.swift
//  BU
//
//  Created by Daniella Onishi on 23/07/21.
//

import UIKit

class DoorsViewController:
    UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func doorOneTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[0])
    }
    
    @IBAction func doorTwoTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[0])
    }
    
    @IBAction func doorThreeTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[0])
    }
    
    
    @IBAction func doorFourTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[0])
    }
    
    @IBAction func doorFiveTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[0])
    }
    
    
    @IBAction func doorSixTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[0])
    }
    
    func presentDoor(door: Door) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let doorVC = storyboard.instantiateViewController(identifier: "DoorViewController") as? DoorViewController else {
            return
        }
        doorVC.setup(door: door)
        present(doorVC, animated: true, completion: nil)
    }
}


