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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        //4桁の数字を入れる配列を準備する
        var combination: [Int] = [1,2,3,4]
        
        var randInt1 = (Int(arc4random_uniform(4)) + 1)
        var randInt2 = Int(arc4random_uniform(UInt32(combination.count)))
        var randInt3 = Int(arc4random_uniform(UInt32(combination.count)))
        var randInt4 = Int(arc4random_uniform(UInt32(combination.count)))
        label.text = String(combination[randInt1])
        label.text = String(combination[randInt2])
        label.text = String(combination[randInt3])
        label.text = String(combination[randInt4])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
}

