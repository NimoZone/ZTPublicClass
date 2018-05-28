//
//  ZTUIKit.swift
//  ZTCalculateLayout
//
//  Created by 曾涛 on 2018/5/22.
//  Copyright © 2018年 曾涛. All rights reserved.
//

import UIKit

public class ZTUIKit: NSObject {

    /// label设置
    ///
    /// - Parameters: 设置参数
    ///   - frame: frame
    ///   - text: text
    ///   - textColor: textColor
    ///   - textfont: textfont
    ///   - textAlignment: Alignment
    /// - Returns: label
    public class func createLabel(frame:CGRect, text:String, textColor:UIColor, textfont:UIFont, textAlignment:NSTextAlignment)-> UILabel{
        
        let color:UIColor?  = textColor
        
        let label           = UILabel.init(frame: frame)
        label.text          =  text;
        label.font          = textfont
        label.textAlignment = textAlignment;
        label.textColor     = (color != nil ? color : UIColor.black)
        
        return label
    }
    
    
    
    /// 随机色
    ///
    /// - Returns: UIColor
    public class func randomColor() -> UIColor{
        
        let hueRandom:CGFloat   = CGFloat(arc4random() % 256)
        let colorRandom:CGFloat = CGFloat(arc4random() % 128)
        
        let hue:CGFloat         = (hueRandom / CGFloat(256.0))
        let saturation:CGFloat  = (colorRandom / CGFloat(256.0)) + CGFloat(0.5)
        let brightness:CGFloat  = (colorRandom / CGFloat(256.0)) + CGFloat(0.5)
        
        return UIColor.init(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}
