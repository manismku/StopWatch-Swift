//
//  ViewController.swift
//  StopWatch
//  Creat Watch Interactor
//  Created by Manish Kumar on 03/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    var interactor: WatchInteractor!
    var isRunning = false

    @IBOutlet weak var lblWatch: UILabel!
    @IBOutlet weak var watchControl: WatchControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setup() {
        watchControl.configure(state: .stopped)
        self.interactor = WatchInteractor()
        self.interactor.delgate = self
    }
}

/*
 *    Handle user action
 */
extension ViewController2 {

    @IBAction func stopWatchAction(sender: UIButton) {
        isRunning = !isRunning
        isRunning ? start() : pause()
    }

    func start() {
        self.interactor.startWatch()
        watchControl.configure(state: .running)
    }

    func pause() {
        self.interactor.stopWatch()
        watchControl.configure(state: .paused)
    }

    func reset() {
        self.interactor.resetWatch()
        self.lblWatch.text = String(format: "%0.2d:%0.2d:%0.2d",0,0,0)
        watchControl.configure(state: .stopped)
    }
}

/*
 *  Update watch time
 */
extension ViewController2: WatchDelegate {
    func updateWatchTime(time: WatchTime) {
        self.lblWatch.text = String(format: "%0.2d:%0.2d:%0.2d",time.h,time.m,time.s)
    }
}
