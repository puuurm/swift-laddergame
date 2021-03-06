//
//  LadderGame.swift
//  Laddergame
//
//  Created by yangpc on 2017. 10. 16..
//  Copyright © 2017년 yang hee jung. All rights reserved.
//

import Foundation

// 사다리 높이 속성과 참여자를 Array로 포함하는 LadderGame struct
struct LadderGame {
    private(set) var names: [LadderPlayer]
    private var height = 0
    
    init(inputs: ([String], Int) ) {
        var playerArray = [LadderPlayer]()
        for name in inputs.0 {
            let p = LadderPlayer(name: name)
            playerArray.append(p)
        }
        self.names = playerArray
        self.height = inputs.1
    }
    
    func makeLadder() -> [[Bool]] {
        var ladderArray = [[Bool]](repeating: Array(repeating: false ,count: self.names.count-1), count: self.height)
        for i in 0..<self.height {
            for j in 0..<names.count-1 {
                ladderArray[i][j] = arc4random_uniform(2) == 0 ? true : false
            }
        }
        return ladderArray
    }
}
