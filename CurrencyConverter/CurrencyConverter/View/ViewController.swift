//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Tatum Manning on 6/23/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var amountInput: UITextField!
    
    var converterLogic = ConverterLogic()
    
    var amountUSD : Int = 0
    var amountString = ""
    var amountEU = ""
    var amountCD = ""
    var amountFR = ""
    var amountYU = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        amountInput.delegate = self
    }

    @IBAction func enterAmount(_ sender: UITextField) {
//        amountString = "$\(sender.text!)"
//        amountUSD = converterLogic.getAmountUSD(sender.text!)
//        print(amountUSD)
                
    }
    
    @IBAction func euros(_ sender: UISwitch) {
        converterLogic.setEUSwitch(sender.isOn)
        
    }
    
    @IBAction func canadian(_ sender: UISwitch) {
        converterLogic.setCDSwitch(sender.isOn)
        
    }
    

    @IBAction func francs(_ sender: UISwitch) {
        converterLogic.setFRSwitch(sender.isOn)
        
    }
    
    
    @IBAction func yuan(_ sender: UISwitch) {
        converterLogic.setYUSwitch(sender.isOn)
    }
    
    
    @IBAction func convert(_ sender: UIButton) {
        
        
        amountUSD = converterLogic.getAmountUSD(amountInput.text!)
        
        if amountUSD != 0 {
            amountString = "$\(amountInput.text!).00"
            amountCD = converterLogic.convertCD(amountUSD)
            amountEU = converterLogic.convertEU(amountUSD)
            amountFR = converterLogic.convertFR(amountUSD)
            amountYU = converterLogic.convertYU(amountUSD)
        } else {
            amountString = "Please enter a valid integer and try again."
        }
        
        self.performSegue(withIdentifier: "toConvertedAmounts", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvertedAmounts" {
            let navigation = segue.destination as! ConvertedAmountView
            navigation.amountInput = amountString
            navigation.amountCD = amountCD
            navigation.amountEU = amountEU
            navigation.amountFR = amountFR
            navigation.amountYU = amountYU
        }
        
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //For mobile numer validation
        if textField == amountInput {
            let allowedCharacters = CharacterSet(charactersIn:"+0123456789 ")//Here change this characters based on your requirement
            let characterSet = CharacterSet(charactersIn: string)
            return allowedCharacters.isSuperset(of: characterSet)
        }
        return true
    }
}


