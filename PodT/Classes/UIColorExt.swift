//
//  UIColorExt.swift
//  ios-freshxiong-app
//
//  Created by BW on 2021/2/1.
//  Copyright © 2021 BW. All rights reserved.
//

import UIKit

extension UIColor {
    /// 主题色
    class var bw_1BC7AF: UIColor {
        return UIColor(hex: 0x1BC7AF)
    }
    /// 新春版
    class var bw_newYear: UIColor {
        return UIColor(hex: 0xE6221E)
    }
    class var bw_backgroud: UIColor {
        return .bw_F8
    }
    class var bw_black: UIColor {
        return UIColor.black
    }
    class var bw_btn_highlight: UIColor {
        return UIColor.bw_F8
    }
    class var bw_view_highlight: UIColor {
        return UIColor(hex: 0xEFEFEF)
    }
    class var bw_90: UIColor {
        return UIColor(hex: 0x909090)
    }
    class var bw_99: UIColor {
        return UIColor(hex: 0x999999)
    }
    class var bw_9A: UIColor {
        return UIColor(hex: 0x9A9A9A)
    }
    class var bw_33: UIColor {
        return UIColor(hex: 0x333333)
    }
    class var bw_66: UIColor {
        return UIColor(hex: 0x666666)
    }
    class var bw_80: UIColor {
        return UIColor(hex: 0x808080)
    }
    class var bw_F27346: UIColor {
        return UIColor(hex: 0xF27346)
    }
    class var bw_FF3119: UIColor {
        return UIColor(hex: 0xFF3119)
    }
    class var bw_FE2E59: UIColor {
        return UIColor(hex: 0xFE2E59)
    }
    class var bw_F16969: UIColor {
        return UIColor(hex: 0xF16969)
    }
    class var bw_F16B6F: UIColor {
        return UIColor(hex: 0xF16B6F)
    }
    class var bw_60C17D: UIColor {
        return UIColor(hex: 0x60C17D)
    }
    class var bw_E1: UIColor {
        return UIColor(hex: 0xE1E1E1)
    }
    class var bw_F2: UIColor {
        return UIColor(hex: 0xF2F2F2)
    }
    class var bw_D8: UIColor {
        return UIColor(hex: 0xD8D8D8)
    }
    class var bw_ED: UIColor {
        return UIColor(hex: 0xEDEDED)
    }
    class var bw_F8: UIColor {
        return UIColor(hex: 0xF8F8F8)
    }
    class var bw_88: UIColor {
        return UIColor(hex: 0x888888)
    }
    class var bw_F276: UIColor {
        return UIColor(hex: 0xF27676)
    }
    class var bw_FBAD7C: UIColor {
        return UIColor(hex: 0xFBAD7C)
    }
    class var bw_F1786B: UIColor {
        return UIColor(hex: 0xF1786B)
    }
    class var bw_FF4848: UIColor {
        return UIColor(hex: 0xFF4848)
    }
    class var bw_F25F48: UIColor {
        return UIColor(hex: 0xF25F48)
    }
    class var bw_5569B8: UIColor {
        return UIColor(hex: 0x5569B8)
    }
    class var bw_4F6ABE: UIColor {
        return UIColor(hex: 0x4F6ABE)
    }
    class var bw_FB5E5E: UIColor {
        return UIColor(hex: 0xFB5E5E)
    }
    class var bw_FFF0E6: UIColor {
        return UIColor(hex: 0xFFF0E6)
    }
    class var bw_FB7061: UIColor {
        return UIColor(hex: 0xFB7061)
    }
    class var bw_F85E5E: UIColor {
        return UIColor(hex: 0xF85E5E)
    }
    class var bw_FF896B: UIColor {
        return UIColor(hex: 0xFF896B)
    }
    class var bw_9D9D9D: UIColor {
        return UIColor(hex: 0x9D9D9D)
    }
    
    class var bw_40DEAC: UIColor {
        return UIColor(hex: 0x40DEAC)
    }
}

extension UIColor {
    /// 生成随机色
    class var random: UIColor {
        let r = CGFloat(arc4random() % 256)
        let g = CGFloat(arc4random() % 256)
        let b = CGFloat(arc4random() % 256)
        return UIColor(r: r, g: g, b: b)
    }
}

// MARK: - 便利构造
extension UIColor {
    /// 便利构造器
    /// - Parameters:
    ///   - r: r
    ///   - g: g
    ///   - b: b
    ///   - a: a
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1.0) {
        
        if #available(iOS 10.0, *) { self.init(displayP3Red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a) }
        else { self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a) }
    }
    
    /// 便利构造器
    /// - Parameter hex: 十六进制数
    convenience init(hex: UInt32) {
        
        let r = CGFloat((hex & 0xFF0000) >> 16)
        let g = CGFloat((hex & 0x00FF00) >> 8)
        let b = CGFloat(hex & 0x0000FF)
        self.init(r: r, g: g, b: b);
    }
    
    /// 便利构造器
    /// - Parameter hex: 十六进制字符串
    convenience init(hex: String) {
        
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        // 去掉 “#”
        if hexString.hasPrefix("#") {
            hexString = String(hexString[hexString.index(after: hexString.startIndex)..<hexString.endIndex])
        }
        
        if hexString.hasPrefix("0X") || hexString.hasPrefix("0x") {
            hexString = String(hexString[hexString.index(hexString.startIndex, offsetBy: 2)..<hexString.endIndex])
        }
        
        if hexString.count != 6 {
            self.init(r: 0, g: 0, b: 0);
            return
        }
        let scanner: Scanner = Scanner(string: hexString)
        var valueRGB: UInt32 = 0
        if scanner.scanHexInt32(&valueRGB) == false {
            self.init(r: 0, g: 0, b: 0);
        } else {
            self.init(hex: valueRGB)
        }
    }
}



