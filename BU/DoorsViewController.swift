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
    }
    
    override func viewWillAppear(_ animated: Bool) {
        soulCounterLabel.text = ModelSingleton.shared.soulPoints.description
        meterStatus.image = UIImage(named: ModelSingleton.shared.meterImageName)
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
       // let soulPoints = ModelSingleton.shared.soulPoints
        
        if ModelSingleton.shared.soulPoints > 4 {
            door.ghostImageName = "Scary-Talking-Balloon"
           // playMusicScary()
        } else if ModelSingleton.shared.karma < 0 {
            door.ghostImageName = "Nice-Talking-Balloon"
        //    playMusicNice()
        } else {
            door.ghostImageName = "Talking-Balloon"
    //        playMusicDefault()
        }
        
        func playMusicDefault() {
            let url: URL = Bundle.main.url(forResource: "audio-1", withExtension: "m4a")!
            music = try! AVAudioPlayer(contentsOf: url, fileTypeHint: nil)

          music.numberOfLoops = 1
          music.prepareToPlay()
          music.volume = 0.3
          music.play()
        }
        
        func playMusicScary() {
            let url: URL = Bundle.main.url(forResource: "audio-1", withExtension: "m4a")!
            musicScary = try! AVAudioPlayer(contentsOf: url, fileTypeHint: nil)

          musicScary.numberOfLoops = 1
          musicScary.prepareToPlay()
          musicScary.volume = 0.3
          musicScary.play()
        }
        
        func playMusicNice() {
            let url: URL = Bundle.main.url(forResource: "audio-1", withExtension: "m4a")!
            music = try! AVAudioPlayer(contentsOf: url, fileTypeHint: nil)

          musicNice.numberOfLoops = 1
          musicNice.prepareToPlay()
          musicNice.volume = 0.3
          musicNice.play()
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


