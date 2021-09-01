//
//  ViewController.swift
//  UnitConverter
//
//  Created by Whitehouse, Jarret M on 9/1/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Outlets and Actions
    
    @IBOutlet var convertedAmountLabel : UILabel!
    @IBOutlet var amountToConvertText: UITextField!
    
    @IBAction func milesToKM(_ sender:UIButton) {
        //convertedAmountLabel.text = "Yo"
        if let miles = Double(amountToConvertText.text!) {
            let km = milesToKM(miles)
            convertedAmountLabel.text = "\(String(km)) kilometers"
        }else {
            convertedAmountLabel.text = "error"
        }
    }
    
    // MARK: Custom Functions
    func milesToKM(_ miles: Double) -> Double {
        return miles * 1.60934
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

