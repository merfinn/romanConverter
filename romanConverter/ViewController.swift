//
//  ViewController.swift
//  romanConverter
//
//  Created by Merve Kavaklioglu on 06/09/2019.
//  Copyright © 2019 Merve Kavaklioglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculateBtnTouchUpInside(_ sender: UIButton) {
        let converter = Converter()
        print(converter.numberToRomanConversion("2342"))
    }
}

