//
//  StationTuneinDetails.swift
//  myClockRadio
//
//  Created by Andre Heß on 06.04.18.
//  Copyright © 2018 Andre Heß. All rights reserved.
//

import UIKit

class StationTuneinDetails: NSObject {
    var jsonData:[String: Any]
    var fileURLStrings:[String] {
        return []
    }
    var titles:[String] {
        return []
    }
    var numberOfEntries:Int {
        if let numberOfEntries = self.jsonData[AllKeys.StationTuneinDetails.NumberOfEntriesKey] as? Int {
            return numberOfEntries
        }
        return 0
    }
    
    init(json:Any) {
        self.jsonData = json as! [String: Any]
    }
}
