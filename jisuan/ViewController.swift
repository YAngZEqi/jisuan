//
//  ViewController.swift
//  jisuan
//
//  Created by 杨泽奇 on 16/3/24.
//  Copyright © 2016年 杨泽奇. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var opeRatorLabel: UILabel!
    var opeRand1: String = ""
    var opeRand2: String = ""
    var opeRator: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func didClicked(sender: UIButton) {
        var value = sender.currentTitle
        let bool_value = true
        if  value == "+"||value == "-"||value == "×"||value == "÷"||value == "%"||value == "^"
        {
            opeRator = value!
            opeRatorLabel.text = "\(opeRator)"
            return
        }
        else if value == "AC"{
            value = "0"
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            resultLabel.text = "0"
            opeRatorLabel.text = ""
            return
        }
        else if value == "+/-"{
            if  bool_value ==  true{
                bool_value == false
            }
            else{
                bool_value == true
            }
        }
        else if value == "="{
            var result = 0
            switch opeRator {
            case "+":
                result = Int(opeRand1)! + Int(opeRand2)!
            case "-":
                result = Int(opeRand1)! - Int(opeRand2)!
            case "×":
                result = Int(opeRand1)! * Int(opeRand2)!
            case "÷":
                result = Int(opeRand1)! / Int(opeRand2)!
            case "%":
                result = Int(opeRand1)! % Int(opeRand2)!
            case "^":
                result = Int(opeRand1)! ^ Int(opeRand2)!
                
            default :
                resultLabel.text = "出错请清零"
            }
            resultLabel.text  = "\(result)"
            opeRatorLabel.text = ""
            opeRand1 = ""
            opeRand2 = ""
            opeRator = ""
            
            return
        }
        if opeRator   == ""{
            
            opeRand1  = opeRand1 + value!
            resultLabel.text = "\(opeRand1)"
            return
        }
        else {
            
            opeRand2  = opeRand2 + value!
            resultLabel.text = "\(opeRand2)"
            return
        }
    }
}

