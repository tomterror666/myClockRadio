//
//  AllKeys.swift
//  myClockRadio
//
//  Created by Andre Heß on 06.04.18.
//  Copyright © 2018 Andre Heß. All rights reserved.
//

import Foundation

struct AllKeys {
    
    struct Station{
        static let StationNameKey = "name"
        static let StationIdKey = "id"
        static let StationBitRateKey = "br"
        static let StationGenreKey = "genre"
        static let StationMediaTypeKey = "mt"
        static let StationsCurrentListnersKey = "lc"
    }
    
    struct StationTuneinDetails {
        static let NumberOfEntriesKey = "playlist.numberofentries"
        static let FileURLKey = "playlist.File"
        static let TitleKey = "playlist.Title"
    }
    
    struct Sound {
        static let SoundNameKey = "SoundNameKey"
        static let SoundURLKey = "SoundURLKey"
        static let SoundDataKey = "SoundDataKey"
        static let SoundExtKey = "SoundExtKey"
    }
}
