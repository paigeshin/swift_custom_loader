//
//  ViewController.swift
//  SwiftCustomLoadingIndicator
//
//  Created by shin seunghyun on 2020/04/21.
//  Copyright © 2020 shin seunghyun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loadButtonPressed(_ sender: UIButton) {
        CustomLoader.instance.showLoader()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        CustomLoader.instance.hideLoader()
    }
    
}

