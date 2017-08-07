//
//  ViewController.swift
//  window-shopper
//
//  Created by Kareem Ismail on 8/3/17.
//  Copyright © 2017 Whatever. All rights reserved.

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var itemTxt: CurrencyTextFields!
    @IBOutlet weak var wageTxt: CurrencyTextFields!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var numberOfHoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5125908247, blue: 0.08118284742, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        itemTxt.inputAccessoryView = calcBtn
        wageTxt.inputAccessoryView = calcBtn
        
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = itemTxt.text {
            if let wage = Double(wageTxt), let itemPrice = Double(priceTxt){
                view.endEditing(true)
                hoursLbl.isHidden = false
                numberOfHoursLbl.isHidden = false
                numberOfHoursLbl.text = "\(calculateHours.calculateHours(forWage: wage, andPrice: itemPrice))"
            }
        }
    }
    @IBAction func clearButtonPressed(_ sender: Any) {
        
        hoursLbl.isHidden = true
        numberOfHoursLbl.isHidden = true
        itemTxt.text = ""
        wageTxt.text = ""
        
    }

}

