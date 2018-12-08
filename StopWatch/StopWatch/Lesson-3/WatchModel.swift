//
//  WatchModel.swift
//  StopWatch
//  Model for Watch time
//  Created by Manish Kumar on 07/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import Foundation

struct WatchTime {
    var h: Int = 0
    var m: Int = 0
    var s: Int = 0

    // For more accuracy we can use miliseconds and then calculated hr, min & seconds
    mutating func tick() {

        s += 1

        if s == 60 {
            m += 1
        }

        if  m == 60 {
            h += 1
        }

        if s > 60 {
            s = 0
        }

        if m > 60 {
            m = 0
        }

        if h > 60 {
            h = 0
        }
    }

    mutating func reset() {
        self = WatchTime()
    }
}
