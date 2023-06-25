//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by Tatum Manning on 6/25/23.
//

import Foundation

struct ConverterLogic {
    
    var eurosSwitch : Bool = true
    var canadianSwitch : Bool = true
    var francsSwitch : Bool = true
    var yuanSwitch : Bool = true
    
    var inputUSD : Int = 0
    
    var amountEU : Float = 0
    var amountCD : Float = 0
    var amountFR : Float = 0
    var amountYU : Float = 0

    
    mutating func setEUSwitch(_ switchValue: Bool) {
        if switchValue {
            eurosSwitch = true
        } else {
            eurosSwitch = false
        }
    }
    
    mutating func setCDSwitch(_ switchValue: Bool) {
        if switchValue {
            canadianSwitch = true
        } else {
            canadianSwitch = false
        }
    }
    
    mutating func setFRSwitch(_ switchValue: Bool) {
        if switchValue {
            francsSwitch = true
        } else {
            francsSwitch = false
        }
    }
    
    mutating func setYUSwitch(_ switchValue: Bool) {
        if switchValue {
            yuanSwitch = true
        } else {
            yuanSwitch = false
        }
    }
    
    mutating func getAmountUSD(_ amount: String) -> Int {
        inputUSD = (amount as NSString).integerValue
        return inputUSD
    }
    
    mutating func convertCD(_ input: Int) -> String {
        if canadianSwitch {
            amountCD = Float(input) * 1.32
            return String(format: "%.2f", amountCD)
        } else {
            return ""
        }
    }
    
    mutating func convertEU(_ input: Int) -> String {
        if eurosSwitch {
            amountEU = Float(input) * 0.91
            return String(format: "%.2f", amountEU)
        } else {
            return ""
        }
    }
    
    mutating func convertFR(_ input: Int) -> String {
        if francsSwitch {
            amountFR = Float(input) * 0.90
            return String(format: "%.2f", amountFR)
        } else {
            return ""
        }
    }
    
    mutating func convertYU(_ input: Int) -> String {
        if yuanSwitch {
            amountYU = Float(input) * 7.18
            return String(format: "%.2f", amountYU)
        } else {
            return ""
        }
    }
    
//    mutating func isInputValid() -> Bool {
//        if inputUSD > 0 {
//            return true
//        } else {
//            return false
//        }
//    }
    
}
