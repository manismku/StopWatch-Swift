//
//  StopWatchControl.swift
//  StopWatch
//  Create custom button
//  Created by Manish Kumar on 03/12/18.
//  Copyright © 2018 manish. All rights reserved.
//

import UIKit

class WatchControl: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = self.bounds.width/2
        self.layer.borderColor = UIColor.red.cgColor
        self.layer.borderWidth = 2.0
        self.layer.masksToBounds = true
    }

    func configure(state: WatchState) {
        self.layer.borderColor = state.getBorderColor().cgColor
        self.setTitleColor(state.getBorderColor(), for: .normal)
        self.setTitle(state.getTitle(), for: .normal)
    }
}
