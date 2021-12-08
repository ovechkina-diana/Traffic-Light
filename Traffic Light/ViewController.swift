//
//  ViewController.swift
//  Traffic Light
//
//  Created by Диана Овечкина on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startButton: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 100
        yellowLightView.layer.cornerRadius = 100
        greenLightView.layer.cornerRadius = 100
    }

    
    
}

