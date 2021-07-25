//
//  DoorsViewController.swift
//  BU
//
//  Created by Daniella Onishi on 23/07/21.
//

import UIKit
import AVFoundation

class DoorsViewController:
    UIViewController {
    @IBOutlet weak var meterStatus: UIImageView!
    @IBOutlet weak var soulCounterLabel: UILabel!
    var music: AVAudioPlayer!
    var musicScary: AVAudioPlayer!
    var musicNice: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        SFXMusicSingleton.shared.playDefaultMusic()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        soulCounterLabel.text = ModelSingleton.shared.soulPoints.description
        meterStatus.image = UIImage(named: ModelSingleton.shared.meterImageName)
        
        if ModelSingleton.shared.karma < 4 && SFXMusicSingleton.shared.currentMusic != .normal  {
            SFXMusicSingleton.shared.playDefaultMusic()
        } else if ModelSingleton.shared.karma > 3 && SFXMusicSingleton.shared.currentMusic != .scare {
            SFXMusicSingleton.shared.playScareMusic()
        }
    }
    
    @IBAction func doorOneTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[0])
    }
    
    @IBAction func doorTwoTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[1])
    }
    
    @IBAction func doorThreeTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[2])
    }
    
    
    @IBAction func doorFourTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[3])
    }
    
    @IBAction func doorFiveTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[4])
    }
    
    @IBAction func doorSixTapped(_ sender: Any) {
        presentDoor(door: ModelSingleton.shared.doors[5])
    }
    
    func presentDoor(door: Door) {
       // let soulPoints = ModelSingleton.shared.soulPoints
        
        if ModelSingleton.shared.soulPoints >= 4 {
            door.ghostImageName = "Scary-Talking-Balloon"
           
        } else if ModelSingleton.shared.karma < 0 {
            door.ghostImageName = "Nice-Talking-Balloon"
      
        } else {
            door.ghostImageName = "Talking-Balloon"
  
        }
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let doorVC = storyboard.instantiateViewController(identifier: "DoorViewController") as? DoorViewController else {
            return
        }
        doorVC.modalPresentationStyle = .fullScreen
        doorVC.setup(door: door)
        present(doorVC, animated: true, completion: nil)
    }
}


