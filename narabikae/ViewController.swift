//
//  ViewController.swift
//  narabikae
//
//  Created by Kei1999 on 2015/09/07.
//  Copyright (c) 2015年 Kei1999. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numbers1:[Int] = [99,21,66,77,7,3832,908]
    var numbers2:[Int] = []
    
    @IBOutlet var textField:UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var a = numbers1.count
        
        while a != 0{
            
            numbers2.append(0)
            a--
            
        }
        
        var b = numbers2.count //b=number2の数
        
        for var i = 0 ; i < numbers1.count ;i++ { //numbers1の取得
            
            for var k = 0 ; k < numbers2.count ;k++ { //numbers2の取得
                
                if numbers1[i] > numbers2[k] { //もしnumbers1のほうが2より大きかったら
                    
                    for var m = numbers1.count - 2 ; m >= k ;m-- { //ずらす
                    
                        numbers2[m+1] = numbers2[m]
                        
                    }
                    
                    numbers2[k] = numbers1[i] //正しいところに入れ込む
                    
                    
                    break
                    
                }
            
            }
            
        }
        
        for var i = 0 ;i < numbers1.count ;i++ {
            
            NSLog("%d",numbers2[i])
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tapTsuika(){
        
        numbers2.append(Int(self.textField.text))
        
        
        
    }


}

