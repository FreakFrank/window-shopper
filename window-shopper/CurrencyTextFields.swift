//
//  CurrencyTextFields.swift
//  window-shopper
//
//  Created by Kareem Ismail on 8/3/17.
//  Copyright © 2017 Whatever. All rights reserved.
//

import UIKit


@IBDesignable
class CurrencyTextFields: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.6956603168)
        currencyLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        currencyLabel.layer.cornerRadius = 5
        currencyLabel.clipsToBounds = true
        currencyLabel.textAlignment = .center
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }

    override func prepareForInterfaceBuilder() {
        
        customize()
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customize()
    }
    
    func customize(){
        layer.cornerRadius = 5
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 0.9983023026, alpha: 0.245505137)
        textAlignment = .center
        //clipsToBounds = true
        if let placeHolder = placeholder{
            
            let place = NSAttributedString(string: placeHolder,attributes: [NSForegroundColorAttributeName: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }

    }

}
