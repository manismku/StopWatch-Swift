//
//  WatchState.swift
//  StopWatch
//
//  Created by Manish Kumar on 03/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import UIKit

enum State {

    case running
    case paused
    case stopped
    
    func getBorderColor() -> UIColor {
        switch self {
        case .running: return UIColor.red
        case .stopped, .paused:
            return UIColor(red: 60/255, green: 120/255, blue: 180/255, alpha: 1)
        }
    }

    func getTitle() -> String {
        switch self {
        case .running: return "Pause"
        case .stopped: return "Start"
        case .paused: return "Start"
        }
    }
}


















