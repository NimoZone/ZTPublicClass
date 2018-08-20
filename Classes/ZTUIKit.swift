//
//  ZTUIKit.swift
//  ZTCalculateLayout
//
//  Created by 曾涛 on 2018/5/22.
//  Copyright © 2018年 曾涛. All rights reserved.
//

import UIKit

@objc public class ZTUIKit: NSObject {
    
    /// label设置
    ///
    /// - Parameters: 设置参数
    ///   - frame: frame
    ///   - text: text
    ///   - textColor: textColor
    ///   - textfont: textfont
    ///   - textAlignment: Alignment
    /// - Returns: label
    @objc public class func createLabel(frame:CGRect, textString:String, textColor:UIColor, textFont:UIFont, textAlignment:NSTextAlignment)-> UILabel{
        
        let color:UIColor?  = textColor
        
        let label           = UILabel.init(frame: frame)
        label.text          =  text;
        label.font          = textfont
        label.textAlignment = textAlignment;
        label.textColor     = (color != nil ? color : UIColor.black)
        
        return label
    }
    
    /// 富文本
    ///
    /// - Parameters:
    ///   - text: 文本内容
    ///   - line: 换行间距
    ///   - loc: 第几个字符开始替换
    ///   - len: 替换长度
    ///   - color: 替换颜色
    ///   - font: 替换字号
    ///   - alignment: 对齐方式， 0:居左 1：居中 2：居右
    /// - Returns: AttributedString
    public class func swiftAttributedString(text:String, line:CGFloat, loc:Int, len:Int, color:UIColor, font:UIFont, alignment:Int) ->NSMutableAttributedString{
        
        let paragraphStyle:NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = line
        paragraphStyle.alignment   = NSTextAlignment(rawValue: alignment)!
        
        let attributedStr:NSMutableAttributedString = NSMutableAttributedString.init(string: text)
        attributedStr.addAttribute(NSAttributedStringKey.foregroundColor, value: color, range: NSMakeRange(loc, len))
        attributedStr.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, text.count))
        attributedStr.addAttribute(NSAttributedStringKey.font, value: font, range: NSMakeRange(loc, len))
        
        return attributedStr
    }
    
    /// 随机色
    ///
    /// - Returns: UIColor
    @objc public class func randomColor() -> UIColor{
        
        let hueRandom:CGFloat   = CGFloat(arc4random() % 256)
        let colorRandom:CGFloat = CGFloat(arc4random() % 128)
        
        let hue:CGFloat         = (hueRandom / CGFloat(256.0))
        let saturation:CGFloat  = (colorRandom / CGFloat(256.0)) + CGFloat(0.5)
        let brightness:CGFloat  = (colorRandom / CGFloat(256.0)) + CGFloat(0.5)
        
        return UIColor.init(hue: hue, saturation: saturation, brightness: brightness, alpha: 1)
    }
}
