//
//  ViewController.swift
//  Traffic Light
//
//  Created by Диана Овечкина on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 77
        yellowLightView.layer.cornerRadius = 77
        greenLightView.layer.cornerRadius = 77
    }


    @IBAction func startPressed() {
        
        if (redLightView.alpha == 0.3) {
            redLightView.alpha = 1
        } else if (redLightView.alpha == 1) {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else if (yellowLightView.alpha == 1) {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            startButton.setTitle("Next", for: .normal)

   }
        
        

        
    }
    
    
}

