//
//  ViewController.swift
//  DongHo30s
//
//  Created by trung on 13/10/2022.
//

import UIKit

class ViewController: UIViewController {

    var abcTimer: Timer!
    var clock: Double! = 0
    
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTimer()
        
        
    }
    
    func setupTimer() {
        abcTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { _ in
            self.clock += 0.1
            print(self.clock)
            print(self.abcTimer.isValid)
            
            if self.clock >= 30 {
                self.abcTimer.invalidate()
            }
            
            self.timeLabel.text = String(self.clock)
            
        })
    }


}

