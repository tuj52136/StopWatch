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
    
    let stopwatch = Stopwatch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButtonTapped(_ sender: UIButton) {
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateElapsedTimeLabel), userInfo: nil, repeats: true)
        
        stopwatch.start()
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

