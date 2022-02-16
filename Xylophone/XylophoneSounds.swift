import Foundation
import AVFoundation

enum PadSoundName {
    case a
    case b
    case c
    case d
    case e
    case f
    case g
}

func getSoundResource(padSoundName: PadSoundName) -> String{
    switch padSoundName {
        case PadSoundName.a:
            return "A"
        case PadSoundName.b:
            return "B"
        case PadSoundName.c:
            return "C"
        case PadSoundName.d:
            return "D"
        case PadSoundName.e:
            return "E"
        case PadSoundName.f:
            return "F"
        case PadSoundName.g:
            return "G"
        }
}
