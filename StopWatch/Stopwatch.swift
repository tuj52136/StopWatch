//
//  Stopwatch.swift
//  StopWatch
//
//  Created by Leo Vergnetti on 2/21/19.
//  Copyright © 2019 Leo Vergnetti. All rights reserved.
//

import Foundation
class Stopwatch{
    
    private var startTime : Date?
    public var isRunning = false
    
    var elapsedTime : TimeInterval {
        if let startTime = self.startTime{
            return -1 * startTime.timeIntervalSinceNow
        }else {
            return 0
        }
    }
    
    
    func start(){
        isRunning = true
        startTime = Date()
    }
    
    
    func stop(){
        isRunning = false
        startTime = nil
    }
    
    var elapsedTimeAsString : String{
        let minutes = String(format: "%02d", Int(elapsedTime) / 60)
        let seconds = String(format: "%02d", Int(elapsedTime) % 60)
        let fractionalSeconds = String(format: "%01d", Int(elapsedTime * 10) % 10)
        return minutes + ":" + seconds + "." + fractionalSeconds
    }
}
