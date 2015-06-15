//
//  CalculatorModel.swift
//  MyCalculator
//
//  Created by 陈刚 on 15/6/13.
//  Copyright (c) 2015年 cg. All rights reserved.
//

import Foundation
class CalculatorModel {
    func evaluate(var temp:(Double,Double,String)) -> (Double,Double,String){
        switch temp.2{
        case "+":
           temp.0 = temp.0 + temp.1
        case "−":
           temp.0 = temp.0 - temp.1
        case "×":
            temp.0 = temp.0 * temp.1
        case "÷":
            temp.0 = temp.0 / temp.1
        default:break
        }
       return temp
        
    }
}