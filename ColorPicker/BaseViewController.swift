//
//  BaseViewController.swift
//  ColorPicker
//
//  Created by Rafael Oliveira on 15/07/18.
//  Copyright © 2018 Rafael Oliveira. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func changeColor(_ sender:UIButton){
        if let reference = self as? colorPickerProtocol {
            let colorPicker = storyboard?.instantiateViewController(withIdentifier: "ColorPickerViewController") as! ColorPickerViewController
            colorPicker.modalPresentationStyle = .overCurrentContext
            colorPicker.reference = reference
            present(colorPicker, animated: true, completion: nil)
        }
    }
    
}
