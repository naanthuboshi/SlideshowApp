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
    
    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var go: UIButton!
    @IBOutlet weak var back: UIButton!
    
    
    
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
            
          go.isEnabled = false//「進む」「戻る」ボタンを無効にする
          back.isEnabled = false//「停止」->「再生」タイトル変更
            play.setTitle("停止",  for: .normal)
                  }
    else {
    timer?.invalidate()
    timer = nil
            go.isEnabled = true//「進む」「戻る」ボタンを有効にする
            back.isEnabled = true//「停止」->「再生」にタイトル変更
            play.setTitle("再生", for: .normal)
        }
    }

    @IBAction func goAction(_ sender: UIButton) {
        index += 1//追加
        if index > 2{
            index = 0
        }
        let  image = UIImage(named :imageArray[index] )
        imageView.image = image
        
        
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        index -= 1//追加
        if index < 0{
           index = 2
        }
        let  image = UIImage(named :imageArray[index] )
    imageView.image = image//追加
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        resultViewController.imageName = imageArray[index]
        
    
            if timer != nil{
           timer?.invalidate()
            timer = nil
                  go.isEnabled = true//「進む」「戻る」ボタンを有効にする
                  back.isEnabled = true//「停止」->「再生」にタイトル変更
            play.setTitle("再生", for: .normal)
        }
    }
            @objc func onTimer(timer: Timer) {
        index += 1//追加
        if index > 2{
            index = 0
        }
        let  image = UIImage(named :imageArray[index] )
        imageView.image = image
        print("on Timer")
        
}

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
            // Do any additional setup after loading the view, typically from a nib.
        
       
    }
    @IBAction func tapView(_ sender: Any) {
        print("viewDidLoad")
        
    
}
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        
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




