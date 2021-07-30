//
//  ViewController.swift
//  TimerApp
//
//  Created by Ahmed kamal on 7/30/21.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- out Let
    @IBOutlet weak var timerLbl: UILabel!
    @IBOutlet weak var btnStart: UIButton!
    @IBOutlet weak var btnStop: UIButton!
    
    //MARK:- variable
    var timer =  Timer()
    var count = 0
    
    override func viewDidLoad(){
        super.viewDidLoad()
        startTime()
      
    }
    
    //MARK:- function Start Timer
    func startTime() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(Action), userInfo: nil, repeats: true)
        btnStart.setTitleColor(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1), for: .normal)
        btnStart.isEnabled = false
    }
    
    @objc func Action() {
        count += 1
        timerLbl.text = String(count)
        
        if count == 30 {
            timer.invalidate()
            count = 0
            timerLbl.text = "0"
            btnStart.setTitleColor(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1), for: .normal)
            btnStart.isEnabled = true
        }
    }
    
    //MARK:- action Buttons
    @IBAction func ActionStart(_ sender: Any){
        print("done")
        startTime()
    }
}

