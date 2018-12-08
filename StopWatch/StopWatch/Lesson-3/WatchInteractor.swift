//
//  WatchLogic.swift
//  StopWatch
//  Creating Watch timer
//  Created by Manish Kumar on 03/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import Foundation

/*
 *  Delegate for interactor
 */
protocol WatchDelegate: class {
    func updateWatchTime(time: WatchTime)
}

class WatchInteractor {
    private var curTime: WatchTime!
    private var timer: Timer?
    weak var delgate: WatchDelegate?

    init() {
        self.curTime = WatchTime()
    }

    /*
      *  Start Timer
      */
    func startWatch() {
        self.timer = Timer(timeInterval: 1, target: self, selector: #selector(fireTimer), userInfo: nil, repeats: true)
        RunLoop.current.add(self.timer!, forMode: .commonModes)
    }

    /*
      *  Stop Timer
      */
    func stopWatch() {
        self.timer?.invalidate()
        self.timer = nil
    }

    /*
      *  Reset Timer
      */
    func resetWatch() {
        stopWatch()
        self.curTime.reset()
    }

    /*
      *  Handle Timer when it is fired
      */
    @objc private func fireTimer() {
        curTime.tick()
        self.delgate?.updateWatchTime(time: curTime)
    }
}
