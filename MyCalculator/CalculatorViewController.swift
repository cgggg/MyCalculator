//
//  CalculatorViewController.swift
//  MyCalculator
//
//  Created by 陈刚 on 15/6/4.
//  Copyright (c) 2015年 cg. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var showLabel: UILabel!
    var isZero = false
    @IBAction func appendDigit(sender: UIButton) {//数字按键
  let digit = sender.currentTitle!
        if isZero { //显示屏中已经显示了不为0的数，新添加的数字增加到当前数字的末尾
        showLabel.text = showLabel.text! + digit
        } else if isZero == false && digit == "0" {
        //当前显示屏中显示的是0，再点击0按钮不做任何处理
        } else {//当前显示屏中显示的是0，点击非0按钮直接替换0
        showLabel.text = digit
        isZero = true
        }
    }
    var result:(Double,Double,String) = (0,0,"+")
    var labelValue:Double {
        get{
            return NSNumberFormatter().numberFromString(showLabel.text!)!.doubleValue
        }
        set{
            showLabel.text = "\(newValue)"
        }
    }
    @IBAction func operate(sender: UIButton) {//二元操作
        let operation = sender.currentTitle!
        result.0 = labelValue
        result.2 = operation
        labelValue = 0//把label置空
        isZero = false
    }
    var cm = CalculatorModel()
    @IBAction func equal() {//求值运算
        result.1 = labelValue
        println("\(result)运算结果为")
        result = cm.evaluate(result)
        println(result.0)
       labelValue = result.0
    }
  
   

    
    @IBAction func clear() {//清空显示屏
        showLabel.text = "0"
        isZero = false
    }
   
}
