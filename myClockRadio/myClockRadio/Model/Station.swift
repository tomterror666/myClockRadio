//
//  Station.swift
//  myClockRadio
//
//  Created by Andre Heß on 06.04.18.
//  Copyright © 2018 Andre Heß. All rights reserved.
//

import UIKit

class Station: NSObject {
    var jsonData:[String: Any]
    var stationName:String {
        if let stationName:String = self.jsonData[AllKeys.Station.StationNameKey] as? String {
            return stationName
        }
        return ""
    }
    var stationId:String {
        if let stationId = self.jsonData[AllKeys.Station.StationIdKey] as? String {
            return stationId
        }
        return ""
    }
    var stationBitRate:Int {
        if let stationBitRate:Int = self.jsonData[AllKeys.Station.StationBitRateKey] as? Int {
            return stationBitRate
        }
        return 0
    }
    var stationGenere:String {
        if let stationGenere:String = self.jsonData[AllKeys.Station.StationGenreKey] as? String {
            return stationGenere
        }
        return ""
    }
    var stationCurrentListeners:Int {
        if let stationCurrentListeners:Int = self.jsonData[AllKeys.Station.StationsCurrentListnersKey] as? Int {
            return stationCurrentListeners
        }
        return 0
    }
    var stationMediaType:String {
        if let stationMediaType = self.jsonData[AllKeys.Station.StationMediaTypeKey] as? String {
            return stationMediaType
        }
        return ""
    }

    init(json: Any) {
        self.jsonData = json as! [String: Any]
    }
}
