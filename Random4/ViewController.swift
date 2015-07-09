//
//  ViewController.swift
//  Random4
//
//  Created by Nozomi Sakamoto on 2015/07/08.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //ラベルのアウトレット接続
    @IBOutlet weak var label:UILabel!
    
    
       //4桁の数字を入れる配列を準備する
        var combination: [String] = ["1","2","3","4"]
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            
            //        //１〜４までの数をランダムに表示する
            var rand1 = (String(arc4random_uniform(4)+1))
            var rand2 = (String(arc4random_uniform(4)+1))
            var rand3 = (String(arc4random_uniform(4)+1))
            var rand4 = (String(arc4random_uniform(4)+1))
            label.text = String (stringInterpolation: rand1, rand2,rand3,rand4)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1(){
        combination.removeAtIndex(0)
        //label.attributedText = self.makeStringFrom

    }
    
    @IBAction func button2(){
        combination.removeAtIndex(1)
    }
    
    @IBAction func button3(){
        combination.removeAtIndex(2)
    }
    @IBAction func button4(){
        combination.removeAtIndex(3)
    }
    
    
    
    
}

