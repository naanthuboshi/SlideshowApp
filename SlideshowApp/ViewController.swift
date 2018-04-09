//
//  ViewController.swift
//  SlideshowApp
//
//  Created by Mac Owner on 2018/04/08.
//  Copyright © 2018年 Mac Owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var imageView: UIImageView!
    
    let imageArray = ["dance_yorokobi_mai_man","dance_yorokobi_mai_woman","money_10000"]
    var index = 0
    var timer: Timer?
    
    @IBAction func playAction(_ sender: UIButton) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval:2.0,
                                     target:self,
                                     selector: #selector(onTimer(timer:)),
                                     userInfo:nil,
                                     repeats:true)
                  }
    else {
    timer?.invalidate()
    timer = nil
    }
    }

    @IBAction func goAction(_ sender: UIButton) {
        index += 1
        let  image = UIImage(named :imageArray[index] )
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        index -= 1
        let  image = UIImage(named :imageArray[index] )
    
    }

    @objc func onTimer(timer: Timer) {
        print("on Timer")
}

class ViewController: UIViewController ,UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad")
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(
        target: self,
        action: #selector (ViewController.tapped(_:))
        
        tapGesture.delegate = self
        
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapped(_ sender: UITapGestureRecognizer){
    if sender.state == .ended{
    print("タップ")
       }
    }
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




