//
//  ZTSizeLayout.swift
//  ZTCalculateLayout
//
//  Created by 曾涛 on 2018/5/22.
//  Copyright © 2018年 曾涛. All rights reserved.
//

import UIKit

let screen_w = UIScreen.main.bounds.size.width
let screen_h = UIScreen.main.bounds.size.height

@objc public class ZTLayoutSize: NSObject {


    /// 约束适配
    ///
    /// - Parameters:
    ///   - isUnshared: 是否为iPhone共用尺寸 (ture 不共用 & false 共用)
    ///   - phoneStandard: iPhone6 UI作为基准的控件标注
    ///   - padStandard: iPad控件标注
    ///   - scale: 为ture则乘以一个尺寸比例
    /// - Returns: 返回UI控件标注
   @objc  public class func layoutSizeWithEdge(isUnshared:Bool, phoneStandard:CGFloat, padStandard:CGFloat, scale:CGFloat)->CGFloat{

        var edge:CGFloat = 0.00;

        if isUnshared {

            if screen_h >= 1024{

                edge = padStandard;

            }else{

                if screen_h >= 667 && screen_h != 812 {

                    edge = phoneStandard*(screen_h/667)*scale;
                }else{

                    edge = phoneStandard;
                }
            }
        }else{

            if screen_h >= 1024 {
                edge = padStandard;
            }else{
                edge = phoneStandard;
            }
        }

        return edge;
    }



    /// 所有尺寸约束适配
    ///
    /// - Parameters:
    ///   - VI: 4、5
    ///   - VII: 6、plus
    ///   - X: 10
    ///   - AP: ApplePad
    /// - Returns: 返回UI控件标注
   @objc public class func fullLayoutSizeWithEdge(VI:CGFloat, VII:CGFloat, X:CGFloat, AP:CGFloat) -> CGFloat {

        var size:CGFloat = 0.00

        if screen_h >= 1024 { //pad
            size = AP;
        }

        if screen_h <= 568{   //4、5
            size = VI;
        }

        if screen_h == 667 || screen_h == 736{   //6
            size = VII;
        }

        if screen_h >= 812 && screen_h < 1024{   //10

            size = X;
        }

        return size;
    }


    /// 导航与tabbar高度
    ///
    /// - Parameters:
    ///   - phoneSize: phone
    ///   - phoneXSize: phoneX
    ///   - padSize: pad
   @objc public class func layoutSizeTopAndBottomFullScalePhoneSize(phoneSize:CGFloat, phoneXSize:CGFloat, padSize:CGFloat) -> CGFloat{

        var size:CGFloat = 0.00

        if screen_h >= 1024 { //pad

            size = padSize;
        }

        if (screen_h <= 736){   //plus及以下

            size = phoneSize;
        }

        if screen_h >= 812{   //10

            size = phoneXSize;
        }

        return size
    }
    
    
    
    
    
}
