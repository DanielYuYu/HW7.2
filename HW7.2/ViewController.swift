//
//  ViewController.swift
//  HW7.2
//
//  Created by Daniel on 2018/7/24.
//  Copyright © 2018年 Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var bubbleSwitch: UISwitch!
    @IBOutlet weak var sweetLabel: UILabel!
    @IBOutlet weak var currentImageView: UIImageView!
    @IBAction func sweetSlider(_ sender: UISlider) {
        sweetLabel.text = "\(String(format: "%0.f", sender.value))"
    }
    
    @IBAction func commitButton(_ sender: Any) {
        currentImageView.isHidden = false
        if segmentControl.selectedSegmentIndex == 0 && bubbleSwitch.isOn {
            currentImageView.image = UIImage(named: "ice1")
        }
        else if segmentControl.selectedSegmentIndex == 0 && !bubbleSwitch.isOn{
            currentImageView.image = UIImage(named: "ice2")
        }
        else if segmentControl.selectedSegmentIndex == 1 && bubbleSwitch.isOn{
            currentImageView.image = UIImage(named: "hot1")
        }
        else if segmentControl.selectedSegmentIndex == 1 && !bubbleSwitch.isOn{
            currentImageView.image = UIImage(named: "hot2")
        }
        else{
             currentImageView.image = UIImage(named: "tea")
        }
    }
}

