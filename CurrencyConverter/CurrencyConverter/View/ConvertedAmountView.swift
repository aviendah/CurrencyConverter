//
//  ConvertedAmountView.swift
//  CurrencyConverter
//
//  Created by Tatum Manning on 6/25/23.
//

import UIKit

class ConvertedAmountView: UIViewController {

    
    @IBOutlet weak var euTitleLabel: UILabel!
    
    @IBOutlet weak var cdTitleLabel: UILabel!
    
    @IBOutlet weak var frTitleLabel: UILabel!
    
    @IBOutlet weak var yuTitleLabel: UILabel!
    
    
    @IBOutlet weak var usdLabel: UILabel!
    
    @IBOutlet weak var eurosLabel: UILabel!
    
    @IBOutlet weak var canadianLabel: UILabel!
    
    @IBOutlet weak var francsLabel: UILabel!
    
    @IBOutlet weak var yuanLabel: UILabel!
    
    var amountInput = ""
    var amountEU = ""
    var amountCD = ""
    var amountFR = ""
    var amountYU = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdLabel.text = amountInput
        
        if isCalculated(amountEU) {
            eurosLabel.text = "$\(amountEU)"
        } else {
            euTitleLabel.isHidden = true
            eurosLabel.isHidden = true
        }
        
        if isCalculated(amountCD) {
            canadianLabel.text = "€\(amountCD)"
        } else {
            cdTitleLabel.isHidden = true
            canadianLabel.isHidden = true
        }
        
        if isCalculated(amountFR) {
            francsLabel.text = "₣\(amountFR)"
        } else {
            frTitleLabel.isHidden = true
            francsLabel.isHidden = true
        }
        
        if isCalculated(amountYU) {
            yuanLabel.text = "¥\(amountYU)"
        } else {
            yuTitleLabel.isHidden = true
            yuanLabel.isHidden = true
        }
        
        // Do any additional setup after loading the view.
    }
    
    
    func isCalculated(_ amount: String) -> Bool {
        if amount == "" {
            return false
        } else {
            return true
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
