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
        if index < 0{
            index = 2
        }
        let  image = UIImage(named :imageArray[index] )
        imageView.image = image
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        if index > 1{
           index = 2
           index = 0
        }
        let  image = UIImage(named :imageArray[index] )
    
    }
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
    }
    @objc func onTimer(timer: Timer) {
        print("on Timer")
}

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad")
        let tapGesture:UITapGestureRecognizer = UITapGestureRecognizer(
        target: self,
        action: #selector (ViewController.tapped(_:)))
        imageView.addGestureRecognizer(tapGesture)
         imageView.isUserInteractionEnabled = true
        
    }
    
    @objc func tapped(_ sender: UITapGestureRecognizer){
    if sender.state == .ended{
    print("タップ")
        performSegue(withIdentifier: "resutlSegue",sender:nil)
       }
    }
override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}




