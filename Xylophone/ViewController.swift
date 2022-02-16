import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var DPadLabel: UILabel!
    @IBOutlet weak var GPadLabel: UILabel!
    @IBOutlet weak var EPadLabel: UILabel!
    @IBOutlet weak var FPadLabel: UILabel!
    @IBOutlet weak var APadLabel: UILabel!
    @IBOutlet weak var BPadLabel: UILabel!
    @IBOutlet weak var CPadLabel: UILabel!
    
    var player: AVAudioPlayer? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotateSoundLabels()
    }
    
    private func rotateSoundLabels() {
        CPadLabel.rotate(degrees: 270)
        BPadLabel.rotate(degrees: 270)
        APadLabel.rotate(degrees: 270)
        GPadLabel.rotate(degrees: 270)
        FPadLabel.rotate(degrees: 270)
        EPadLabel.rotate(degrees: 270)
        DPadLabel.rotate(degrees: 270)
    }
    
    private func playSound(padSoundName: PadSoundName) {
        guard let url = Bundle.main.url(forResource: getSoundResource(padSoundName: padSoundName), withExtension: "wav") else {
            return
        }
        player = try! AVAudioPlayer(contentsOf: url, fileTypeHint: "wav")
        player?.play()
    }
    
    @IBAction func playCNote(_ sender: Any) {
        playSound(padSoundName: PadSoundName.c)
    }
    
    @IBAction func playBNote(_ sender: Any) {
        playSound(padSoundName: PadSoundName.b)
    }
    
    @IBAction func playANote(_ sender: Any) {
        playSound(padSoundName: PadSoundName.a)
    }
    
    @IBAction func playGNote(_ sender: Any) {
        playSound(padSoundName: PadSoundName.g)
    }
    
    @IBAction func playFNote(_ sender: Any) {
        playSound(padSoundName: PadSoundName.f)
    }
    
    @IBAction func playENote(_ sender: Any) {
        playSound(padSoundName: PadSoundName.e)
    }
    
    @IBAction func playDNote(_ sender: Any) {
        playSound(padSoundName: PadSoundName.d)
    }
    
}
