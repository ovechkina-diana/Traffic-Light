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
   
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 100
        yellowLightView.layer.cornerRadius = 100
        greenLightView.layer.cornerRadius = 100
    }

    @IBAction func startButtonPressed() {
        while (true) {
            redLightView.alpha = 1
            
            if (redLightView.alpha == 1) {
                yellowLightView.alpha = 0.3
                greenLightView.alpha = 0.3
                startButton.setTitle("Next", for: .normal)
            }
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            
             if (yellowLightView.alpha == 1) {
                redLightView.alpha = 0.3
                greenLightView.alpha = 0.3
                startButton.setTitle("Next", for: .normal)
            }
            
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            
            if (greenLightView.alpha == 1) {
                redLightView.alpha = 0.3
                yellowLightView.alpha = 0.3
                startButton.setTitle("Next", for: .normal)
            }
        }
    }
    
    
}

