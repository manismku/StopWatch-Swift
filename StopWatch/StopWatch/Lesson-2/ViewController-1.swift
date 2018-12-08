//
//  ViewController.swift
//  StopWatch
//  Custom Contol
//  Created by Manish Kumar on 03/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {

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
    }
}

/*
 *    Handle user action
 */
extension ViewController1 {

    @IBAction func stopWatchAction(sender: UIButton) {
        isRunning = !isRunning
        isRunning ? start() : pause()
    }

    func start() {
        watchControl.configure(state: .running)
    }

    func pause() {
        watchControl.configure(state: .paused)
    }

    func reset() {
        self.lblWatch.text = String(format: "%0.2d:%0.2d:%0.2d",0,0,0)
        watchControl.configure(state: .stopped)
    }
}
