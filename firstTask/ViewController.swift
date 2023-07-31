//
//  ViewController.swift
//  firstTask
//
//  Created by Lazzat on 22.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        var sum = String(Double(text1.text!)! + Double(text2.text!)!)
       
        if sum.contains(".0"){
            sum.removeLast(2)
        }
        label.text = sum
        
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        var sum = String(Double(text1.text!)! - Double(text2.text!)!)
        
        if sum.contains(".0"){
            sum.removeLast(2)
        }
        label.text = sum
        
    }
    @IBAction func multiple(_ sender: Any) {
        var sum = String(Double(text1.text!)! * Double(text2.text!)!)
        if sum.contains(".0"){
            sum.removeLast(2)
        }
        label.text = sum
    }
    
    @IBAction func divide(_ sender: Any) {
        var sum = String(Double(text1.text!)! / Double(text2.text!)!)
        if sum.contains(".0"){
            sum.removeLast(2)
        }
        label.text = sum
    }
    
    @IBAction func clear(_ sender: Any) {
        label.text = "0"
        text1.text = ""
        text2.text = ""
    }
    
    @IBAction func percent(_ sender: Any) {
        var sum = String(100 * Double(text2.text!)! / Double(text1.text!)!)
        if sum.contains(".0"){
            sum.removeLast(2)
        }
        label.text = sum
    }
    
    @IBAction func plusAndMinus(_ sender: Any) {
        var k = Double(label.text!)
        k = k! * (-1)
        var sum = String(k!)
        
        if sum.contains(".0"){
            sum.removeLast(2)
        }
        label.text = sum
    }
    
    
    
    
}

