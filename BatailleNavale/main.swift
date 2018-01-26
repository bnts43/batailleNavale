//
//  main.swift
//  BatailleNavale
//
//  Created by Benoit NEUTS on 19/01/2018.
//  Copyright © 2018 Benoit NEUTS. All rights reserved.
//

import Foundation

let gameBoard = Plateau()

// initialisation des cases du plateau
for line in 1...10 {
    for column in 1...10 {
        let newPosition = CasePosition(line: line, column: column, state: .vide)
        gameBoard.casesPlateau.append(newPosition)
    }
}

func searchCase(line: Int, column: Int) -> CasePosition? {
    var thatsMe: CasePosition? = nil

    for position in gameBoard.casesPlateau {
        if (position.column==column||position.line==line) {
            thatsMe = position
            break
        }

    }
    return thatsMe
}

func displayCase(position:CasePosition?) -> String {
    switch position?.state {
    case .red?:
        return "X"
    case .white?:
        return "O"
    case .vide?:
        return "_"
        
    case .none:
        return "error"
    }
}

func displayBoard(gameBoard: Plateau) {
    for line in 0...10 {
        if line == 10 {
            print(line,terminator:" |")
        } else {
            if line == 0 {
                print(" ",terminator:"  |")
            } else {
                print(line,terminator:"  |")
            }
        }
            for column in 0...10 {
                if line==0 {
                    switch column {
                    case 0: print(" ",terminator:" ")
                    case 1: print("A",terminator:" ")
                    case 2: print("B",terminator:" ")
                    case 3: print("C",terminator:" ")
                    case 4: print("D",terminator:" ")
                    case 5: print("E",terminator:" ")
                    case 6: print("F",terminator:" ")
                    case 7: print("G",terminator:" ")
                    case 8: print("H",terminator:" ")
                    case 9: print("I",terminator:" ")
                    case 10: print("J",terminator:" ")
                    default:
                        print("error")
                    }
                } else {
                    print(displayCase(position: searchCase(line: line, column: column)),terminator:" ")
                }
            }
      
        print("")
    }
}


func playCase(playedCase: CasePosition) {
}

func isGameEnded(ships: [Ship]) -> Bool {
    return false
}

print("starting game...")
print("start displaying board")

displayBoard(gameBoard: gameBoard)


print("which ")
