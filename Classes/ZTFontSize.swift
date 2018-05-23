//
//  ZTFontSize.swift
//  ZTCalculateLayout
//
//  Created by 曾涛 on 2018/5/22.
//  Copyright © 2018年 曾涛. All rights reserved.
//

import UIKit

class ZTFontSize: UIFont {

    /// 设备字体
    ///
    /// - Parameters: 参数
    /// - isUnshared: 是否为iPhone共用尺寸 (ture 不共用 & false 共用)
    /// - phoneFont: iPhone6 UI作为基准的字体尺寸
    /// - padFont: iPad字体尺寸
    /// - scale: 为ture则乘以一个尺寸比例
    /// - Returns: 返回UI字体尺寸
    class func fontSize(isUnshared:Bool, phoneFont:CGFloat, padFont:CGFloat, scale:CGFloat)-> UIFont{

        var commonFont:UIFont

        if isUnshared {

            if screen_h >= 1024{

                commonFont = UIFont.systemFont(ofSize: padFont);
            }else{

                if screen_h > 667 && screen_h != 812 {

                    commonFont = UIFont.systemFont(ofSize: phoneFont*(screen_h/667)*scale)
                }else{

                    commonFont = UIFont.systemFont(ofSize: phoneFont);
                }
            }
        }else{

            if (screen_h >= 1024) {
                commonFont = UIFont.systemFont(ofSize: padFont);
            }else{
                commonFont = UIFont.systemFont(ofSize: phoneFont);
            }
        }

        return commonFont;
    }

    /// 加粗设备字体
    ///
    /// - Parameters:参数
    /// - boldPhoneFont: 4-7设备加粗
    /// - boldPhonePlusFont: 7P及以上设备加粗
    /// - boldPadFont: pad设备加粗
    /// - Returns: 字体大小
    class func blodFontSize(boldPhoneFont:CGFloat, boldPhonePlusFont:CGFloat, boldPadFont:CGFloat)->UIFont{

        let font:UIFont

        if(screen_w > 414){
            //iPad 版本代码;
            font = UIFont.boldSystemFont(ofSize: boldPadFont);
        }else{

            //iPhone/iPod touch 版本代码;
            if (screen_w <= 375 ) {

                font = UIFont.boldSystemFont(ofSize: boldPhoneFont)
            }else{

                font = UIFont.boldSystemFont(ofSize: boldPhonePlusFont)
            }
        }

        return font
    }

    
    class func fontNameSize(fontName:String, phoneFont:CGFloat, phoneSixFont:CGFloat, phonePlusFont:CGFloat, padFont:CGFloat)->UIFont{

        let font:UIFont
        let name:String? = fontName
        
        if screen_w > 414{
            //iPad 版本代码;

            font = (name == nil ? UIFont.systemFont(ofSize: padFont) : UIFont.init(name: fontName, size: padFont)!)

        } else{
            //iPhone/iPod touch 版本代码;
            if screen_w == 320 {

                font = (name == nil ? UIFont.systemFont(ofSize: phoneFont) : UIFont.init(name: fontName, size: phoneFont)!)

            }else if screen_w == 375{

                font = (name == nil ? UIFont.systemFont(ofSize: phoneSixFont) : UIFont.init(name: fontName, size: phoneSixFont)!)

            }else{

                font = (name == nil ? UIFont.systemFont(ofSize: phonePlusFont) : UIFont.init(name: fontName, size: phonePlusFont)!)
            }
        }
        return font;
    }
    
    
    
}
