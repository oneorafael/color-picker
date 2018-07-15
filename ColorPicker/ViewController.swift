//
//  ViewController.swift
//  ColorPicker
//
//  Created by Rafael Oliveira on 15/07/18.
//  Copyright © 2018 Rafael Oliveira. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: colorPickerProtocol {
    func applyColor(color: UIColor) {
        view.backgroundColor = color
    }
}

