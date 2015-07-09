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
    //１〜４までの数をランダムに決める
    var rand1 = String(arc4random_uniform(4)+1)
    var rand2 = String(arc4random_uniform(4)+1)
    var rand3 = String(arc4random_uniform(4)+1)
    var rand4 = String(arc4random_uniform(4)+1)
    
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
            //ラベルにランダムな数を表示する
            label.text = String (stringInterpolation: rand1, rand2,rand3,rand4)
        }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func button1(){
        if rand1 == "1" {
            combination.removeAtIndex(0)
            label.text = String (stringInterpolation: rand2,rand3,rand4)
        }else if rand2 == "1" {
            combination.removeAtIndex(0)
            label.text = String (stringInterpolation: rand3,rand4)
        }else if rand3 == "1" {
            combination.removeAtIndex(0)
            label.text = String (stringInterpolation: rand4)
        }else if rand4 == "1" {
            combination.removeAtIndex(0)
            label.text = String (0)
        }
    }
    @IBAction func button2(){
        if rand1 == "2"{
            combination.removeAtIndex(1)
            label.text = String (stringInterpolation: rand2,rand3,rand4)
        }else if rand2 == "2" {
            combination.removeAtIndex(1)
            label.text = String (stringInterpolation: rand3,rand4)
        }else if rand3 == "2" {
            combination.removeAtIndex(1)
            label.text = String (stringInterpolation: rand4)
        }else if rand4 == "2" {
           combination.removeAtIndex(1)
            label.text = String (0)
        }
    }
    
    @IBAction func button3(){
        if rand1 == "3"{
            combination.removeAtIndex(2)
            label.text = String (stringInterpolation: rand2,rand3,rand4)
        }else if rand2 == "3" {
            combination.removeAtIndex(2)
            label.text = String (stringInterpolation: rand3,rand4)
        }else if rand3 == "3" {
            combination.removeAtIndex(2)
            label.text = String (stringInterpolation: rand4)
        }else if rand4 == "3" {
            combination.removeAtIndex(2)
        label.text = String (0)
        }
    
    }
    @IBAction func button4(){
        if rand1 == "4"{
            combination.removeAtIndex(3)
            label.text = String (stringInterpolation: rand2,rand3,rand4)
        }else if rand2 == "4" {
            combination.removeAtIndex(3)
            label.text = String (stringInterpolation: rand3,rand4)
        }else if rand3 == "4" {
            combination.removeAtIndex(3)
            label.text = String (stringInterpolation: rand4)
        }else if rand4 == "4" {
            combination.removeAtIndex(3)
            label.text = String (0)
        }
    }
    }
    
    
    


