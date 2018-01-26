//
//  Ship.swift
//  BatailleNavale
//
//  Created by Benoit NEUTS on 19/01/2018.
//  Copyright © 2018 Benoit NEUTS. All rights reserved.
//

import Foundation

struct Ship {
    var cases: [CasePosition]
    var striked: Bool = false
    func length() -> Int {
        return cases.count
    }
    
    mutating func isAt(casePosition: CasePosition) -> Bool {
        var isAt = false
        for var caseShip in cases {
            if caseShip == casePosition {
                caseShip.state = .red
                striked = isShipEntirelyStriked()
                isAt = true
            } else {
                isAt = false
            }
        }
        return isAt
    }
    
    func isShipEntirelyStriked() -> Bool {
        var isEntirelyStriked = false
        for caseShip in cases {
            if caseShip.state == .red {
                isEntirelyStriked = true
            }
        }
        if isEntirelyStriked {
            return true
        } else {
            return false
        }
    }
}
