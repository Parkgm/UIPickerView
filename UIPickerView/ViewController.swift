//
//  ViewController.swift
//  UIPickerView
//
//  Created by D7703_11 on 2018. 4. 19..
//  Copyright © 2018년 kimjin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    //ctrl + command + 클릭으로 메소드 확인할것

    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Delegate 와  ViewController 연결
        myPickerView.delegate = self
        myPickerView.dataSource = self
        
        
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return 10
        } else {
            return 100
        }
    }
    // UIPickerViewDelegate method
    // Picker에 값넣기
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return "comp01  \(row)"
        } else {
            return "com02  \(row)"
        }
        
    }

    //Picker에 있는 값 뽑아 오기
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            myLabel.text = "com01 row\(row)"
        } else {
            myLabel.text = "com02 row\(row)"
        }
        
        
    }
    
    
}

