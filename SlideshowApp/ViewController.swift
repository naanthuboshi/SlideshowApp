//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Mac Owner on 2018/04/08.
//  Copyright © 2018年 Mac Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageArray = ["dance_yorokobi_mai_man","dance_yorokobi_mai_woman","money_10000"]
    var index = 0
    var timer: Timer?
    
    @IBAction func playAction(_ sender: UIButton) {
        timer = Timer.scheduledTimer()//
                  }
    
    @IBAction func goAction(_ sender: UIButton) {
        index += 1
        let  image = UIImage(named :imageArray[index] )
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        index -= 1
        let  image = UIImage(named :imageArray[index] )
    
    }




 func onTimer(timer: Timer) {
    @objc func onTimer(time: Timer) {
        
    }print("on Timer")
}
weak var imageView: UIImageView!
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



