//
//  Case.swift
//  BatailleNavale
//
//  Created by Benoit NEUTS on 19/01/2018.
//  Copyright © 2018 Benoit NEUTS. All rights reserved.
//

import Foundation

enum CaseState {
    case white
    case red
}

struct CasePosition: Hashable {
    
    static func ==(lhs: CasePosition, rhs: CasePosition) -> Bool {
        if (lhs.column == rhs.column && lhs.line == rhs.line ) {
            return true
        } else {
            return false
        }
    }
    
    var hashValue: Int {
        return 0
    }
    
    
    var state: CaseState?
    let line: Int // 0..<10
    let column: Character // A, B...
    
    init(column column: Int, line line: Int) {
        column = column
        line = line
    }
}


