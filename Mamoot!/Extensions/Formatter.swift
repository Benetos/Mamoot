//
//  HelperFunctions.swift
//  Mamoot!
//
//  Created by Alex Modroño Vara on 03/09/2019.
//  Copyright © 2019 Semiak & JoeyPi. All rights reserved.
//

import Foundation

extension Int {
    var formatted: String {

        if self >= 10000, self <= 999999 {
            return String(format: "%.1fK", locale: Locale.current,self/1000).replacingOccurrences(of: ".0", with: "")
        }

        if self > 999999 {
            return String(format: "%.1fM", locale: Locale.current,self/1000000).replacingOccurrences(of: ".0", with: "")
        }

        return String(format: "%.0f", locale: Locale.current,self)
    }
}


func formatPoints(num: Double) ->String{
    var thousandNum = num/1000
    var millionNum = num/1000000
    if num >= 1000 && num < 1000000{
        if(floor(thousandNum) == thousandNum){
            return("\(Int(thousandNum))k")
        }
        return("\(thousandNum.roundToPlaces(places: 1))k")
    }
    if num > 1000000{
        if(floor(millionNum) == millionNum){
            return("\(Int(thousandNum))k")
        }
        return ("\(millionNum.roundToPlaces(places: 1))M")
    }
    else{
        if(floor(num) == num){
            return ("\(Int(num))")
        }
        return ("\(num)")
    }

}

extension Double {
    /// Rounds the double to decimal places value
    mutating func roundToPlaces(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return Darwin.round(self * divisor) / divisor
    }
}
