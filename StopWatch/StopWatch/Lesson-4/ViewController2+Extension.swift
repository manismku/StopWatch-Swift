//
//  ViewController.swift
//  StopWatch
//  Introducing Shake Gesture
//  Created by Manish Kumar on 03/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import UIKit

extension ViewController2 {
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            reset()
        }
    }
}
