//
//  SiuButtonCountDown.swift
//  WariShopForMerchants
//
//  Created by Estronger on 2017/8/3.
//  Copyright © 2017年 Siu. All rights reserved.
//

import UIKit

extension UIButton {
    func startCountDown(startTime:NSInteger,
                        startButtonColor:UIColor,
                        startButtonBorderColor:UIColor,
                        startTitleColor:UIColor,
                        countDownTitle:String,
                        countDownButtonColor:UIColor,
                        countDownButtonBorderColor:UIColor,
                        countDownTitleColor:UIColor) {
        
        weak var weakSelf = self
        var timeOut:NSInteger = startTime
        let timer = DispatchSource.makeTimerSource(flags: [], queue: DispatchQueue.global())
        timer.schedule(wallDeadline: DispatchWallTime.now(), repeating: .seconds(1))
        timer.setEventHandler {
            if timeOut <= 0{
                timer.cancel()
                DispatchQueue.main.async(execute: {
                    weakSelf?.setTitle(countDownTitle, for: .normal)
                    weakSelf?.setTitleColor(countDownTitleColor, for: .normal)
                    weakSelf?.backgroundColor = countDownButtonColor
                    weakSelf?.borderColor = countDownButtonBorderColor
                    weakSelf?.isUserInteractionEnabled = true
                })
            }else{
                let allTime = startTime + 1
                let seconds = timeOut % allTime
                let timeString = String(seconds)
                print(seconds)
                DispatchQueue.main.async(execute: {
                    weakSelf?.setTitle(timeString, for: .normal)
                    weakSelf?.setTitleColor(startTitleColor, for: .normal)
                    weakSelf?.backgroundColor = startButtonColor
                    weakSelf?.borderColor = startButtonBorderColor
                    weakSelf?.isUserInteractionEnabled = false
                })
                timeOut -= 1
            }
        }
        timer.resume()
    }
}
