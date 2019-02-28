//
//  ViewController.swift
//  StopWatch
//
//  Created by Leo Vergnetti on 2/21/19.
//  Copyright © 2019 Leo Vergnetti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    @IBOutlet weak var timerButton: UIButton!
    
    let stopwatch = Stopwatch()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        if stopwatch.isRunning{
            timerButton.backgroundColor = UIColor(red: 0.23, green: 00, blue: 0.81, alpha: 1.0)
            timerButton.setTitle("Start", for: .normal)
            stopwatch.stop()
        } else{
            timerButton.backgroundColor = UIColor(red: 0.62, green: 00, blue: 0.69, alpha: 1.0)
            timerButton.setTitle("Stop", for: .normal)
            Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true){ self.updateElapsedTimeLabel(timer: $0) }
            stopwatch.start()
//             timerButton.tintColor = UIColor.red
        }
    }
    
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        
        stopwatch.stop()
    }
    
    @objc func updateElapsedTimeLabel(timer: Timer){
        if stopwatch.isRunning{
            elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
        }else{
            timer.invalidate()
        }
    }
}

