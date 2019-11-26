//
//  WatchState+Extension.swift
//  StopWatch
//  Introducing tuple and Remove
//  Created by Manish Kumar on 07/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import Foundation

extension WatchState {
    func getBorderRGBValue() -> (Float,Float,Float) {
        switch self {
        case .running: return (255/255,0,0)
        case .stopped: return (0,0,0)
        case .paused: return (60/255,120/255,80/255)
        }
    }
}
