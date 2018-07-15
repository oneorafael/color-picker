//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Rafael Oliveira on 15/07/18.
//  Copyright © 2018 Rafael Oliveira. All rights reserved.
//

import UIKit

protocol colorPickerProtocol: class {
    func applyColor(color:UIColor)
}

class ColorPickerViewController: UIViewController {

    @IBOutlet weak var vColor: UIView!
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var slBlue: UISlider!
    weak var reference: colorPickerProtocol?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
   
    @IBAction func chooseColor(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        reference?.applyColor(color: vColor.backgroundColor!)
    }
    
    @IBAction func changeColor(_ sender: UISlider) {
        vColor.backgroundColor = UIColor(red: CGFloat(slRed.value), green: CGFloat(slGreen.value), blue: CGFloat(slBlue.value), alpha: 1.0)
    }
    
    
}
