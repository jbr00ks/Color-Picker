//
//  ColorPickerViewController.swift
//  Color Picker
//
//  Created by Joshua Brooks on 10/11/19.
//  Copyright © 2019 Joshua Brooks. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    var selectedColor: Color?
    
    var colors = [Color(name: "Red", uiColor: UIColor.red),
                  Color(name: "Orange", uiColor: UIColor.orange),
                  Color(name: "Yellow", uiColor: UIColor.yellow),
                  Color(name: "Green", uiColor: UIColor.green),
                  Color(name: "Blue", uiColor: UIColor.blue),
                  Color(name: "Purple", uiColor: UIColor.purple)]
    
    var background: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedColor = colors[0]
        colorLabel.text = selectedColor?.name
        view.backgroundColor = selectedColor?.uiColor
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return colors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedColor = colors[row]
        background = selectedColor?.uiColor
        colorLabel.text = selectedColor?.name
        view.backgroundColor = background
    }

}
