//
//  ViewController.swift
//  Egg Timer
//
//  Created by Tarek Moubarak on 9/23/18.
//  Copyright © 2018 Tarek Moubarak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLbl: UILabel!
    var timer = Timer()
    var initialTime = 210
    
    @objc func processTimer(){
        if initialTime == 0{
            initialTime = 0
            timer.invalidate()
        }else{
            initialTime -= 1
        }
        timeLbl.text = String(initialTime)
    }
    
    @IBAction func playBtnClicked(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(processTimer), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseBtnClicked(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetBtnClicked(_ sender: Any) {
        initialTime = 210
        timeLbl.text = String(initialTime)
    }
    
    @IBAction func minusTen(_ sender: Any) {
        if (initialTime > 10){
            initialTime -= 10
            timeLbl.text = String(initialTime)
        }
    }
    
    
    @IBAction func plusTen(_ sender: Any) {
        if (initialTime < 210){
            initialTime += 10
            timeLbl.text = String(initialTime)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timeLbl.text = String(initialTime)
    }


}

