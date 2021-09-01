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
    
    @IBAction func KMToMiles(_ sender:UIButton) {
        if let km = Double(amountToConvertText.text!) {
            let miles = KMToMiles(km)
            convertedAmountLabel.text = "\(String(miles)) miles"
        }else {
            convertedAmountLabel.text = "error"
        }
    }
    
    @IBAction func FToC(_ sender:UIButton) {
        if let F = Double(amountToConvertText.text!) {
            let C = convertFToC(F)
            convertedAmountLabel.text = "\(String(C)) celsius"
        }else {
            convertedAmountLabel.text = "error"
        }
    }
    
    @IBAction func CToF(_ sender:UIButton) {
        if let C = Double(amountToConvertText.text!) {
            let F = convertCToF(C)
            convertedAmountLabel.text = "\(String(F)) fahrenheit"
        }else {
            convertedAmountLabel.text = "error"
        }
    }
    
    // MARK: Custom Functions
    func milesToKM(_ miles: Double) -> Double {
        return miles * 1.60934
    }
    
    func KMToMiles(_ kms: Double) -> Double {
        return kms * 0.621371
    }
    
    func convertFToC(_ f: Double) -> Double {
        return ((f - 32) * (5/9))
    }
    
    func convertCToF(_ c: Double) -> Double {
        return ((c * (9/5)) + 32)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

