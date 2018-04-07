//
//  Sound.swift
//  myClockRadio
//
//  Created by Andre Heß on 06.04.18.
//  Copyright © 2018 Andre Heß. All rights reserved.
//

import UIKit

class Sound: NSObject, NSCopying, NSCoding {
    
    var soundName:String
    var soundExt:String
    var soundURL:URL
    var soundData:Data
    var soundFullName:String {
        let small_urlString:NSString = self.soundName as NSString
        if let full_urlString = small_urlString.appendingPathExtension(self.soundExt) {
            return full_urlString as String
        } else {
            return ""
        }
    }
    
    init(url:URL) {
        self.soundName = ""
        self.soundURL = url
        self.soundExt = ""
        self.soundData = Data()
        super.init()
        self.configureSoundName()
        self.loadSoundData()
    }
    
    func configureSoundName() {
        var soundPath:NSString = self.soundURL.path as NSString
        soundPath = soundPath.lastPathComponent as NSString
        self.soundName = soundPath.deletingPathExtension
        self.soundExt = soundPath.pathExtension
    }
    
    func loadSoundData() {
        do {
             try self.soundData = Data.init(contentsOf: self.soundURL)
        } catch {
            self.soundData = Data()
        }
    }
    
    required convenience init?(coder aDecoder:NSCoder) {
        guard let soundURL = aDecoder.decodeObject(forKey: AllKeys.Sound.SoundURLKey) as? URL else {
            return nil
        }
        self.init(url:soundURL)
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.soundURL, forKey: AllKeys.Sound.SoundURLKey)
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let newOne:Sound = Sound.init(url: self.soundURL)
        return newOne
    }
}
