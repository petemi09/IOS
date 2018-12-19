//
//  ViewController.swift
//  Tip calculator
//
//  Created by Mitchell Petellin on 12/18/18.
//  Copyright © 2018 Mitchell Petellin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var bill: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    //@IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalCost: UILabel!
    
    
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        bill.keyboardType = UIKeyboardType.decimalPad
        label.isHidden = true
        tipLabel.isHidden = true
        totalLabel.isHidden = true
        totalCost.isHidden = true
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func resetPushed(_ sender: Any) {
        label.isHidden = true
        tipLabel.isHidden = true
        totalLabel.isHidden = true
        totalCost.isHidden = true
        bill.text = ""
        
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let value = slider.value
        sliderLabel.text = String(format: "%i",Int(value))
        //sliderLabel.text = String(value)
            }

    @IBAction func caclPushed(_ sender: Any) {
        label.isHidden = false
        totalCost.isHidden = false
        if bill.text == "" {
            label.text = "Error Must"
            totalCost.text = "be numbers"
        } else {
            tipLabel.isHidden = false
            totalLabel.isHidden = false
            
            let billCost: Double = Double(bill.text!)!
            let sliderNum: Double = Double(sliderLabel.text!)!
            
            let tiptotal = billCost * (sliderNum / 100)
            let total = billCost + tiptotal
            label.text = String(format: "$ %.2f",Double(tiptotal))
            totalCost.text = String(format: "$ %.2f",Double(total))
        }
    }
    

}

