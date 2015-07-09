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
    @IBOutlet var label:UILabel!
    
    
    //4桁の数字を入れる配列を準備する
    var combination: [Int] = [1,2,3,4]
    var count :Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        //１〜４までの数をランダムに表示する
        var randInt1 = (Int(arc4random_uniform(4)) + 1)

        
        label.text = String(combination[randInt1])
        
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

