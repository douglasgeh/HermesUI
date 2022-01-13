//
//  ViewController.swift
//  HermesUI
//
//  Created by douglasgeh on 01/12/2022.
//  Copyright (c) 2022 douglasgeh. All rights reserved.
//

import UIKit
import HermesUI

class ViewController: UIViewController {
    
    @IBOutlet private weak var proceedButton: HermesButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        proceedButton.configure(
            with: .init(
                title: "Prosseguirrrrr",
                kind: .outlined(HermesBase.Colors.accent)
            )
        )
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

