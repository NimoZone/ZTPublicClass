//
//  ZTMakeColor.swift
//  ZTCalculateLayout
//
//  Created by 曾涛 on 2018/5/22.
//  Copyright © 2018年 曾涛. All rights reserved.
//

import UIKit

class ZTMakeColor: UIColor {

    class func colorWithHexString(hex:String) ->UIColor {
        
        var cString = hex.trimmingCharacters(in:CharacterSet.whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            let index = cString.index(cString.startIndex, offsetBy:1)
            cString = String(cString[index...])
        }
        
        if (cString.count != 6) {
            return UIColor.red
        }
        
        let rIndex      = cString.index(cString.startIndex, offsetBy: 2)
        let rString     = String(cString[..<rIndex])
        let otherString = String(cString[rIndex...])
        let gIndex      = otherString.index(otherString.startIndex, offsetBy: 2)
        let gString     = String(otherString[..<gIndex])
        let bIndex      = cString.index(cString.endIndex, offsetBy: -2)
        let bString     = String(cString[bIndex...])
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
}
