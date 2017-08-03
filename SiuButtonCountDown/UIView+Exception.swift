//
//  UIView+Exception.swift
//  WariShopForMerchants
//
//  Created by Estronger on 2017/8/1.
//  Copyright © 2017年 Siu. All rights reserved.
//

import UIKit
extension UILabel{
    @IBInspectable var textHexColor: NSString {
        get {
            return "0xffffff";
        }
        set {
            let scanner = Scanner(string: newValue as String)
            var hexNum = 0 as UInt32
            
            if (scanner.scanHexInt32(&hexNum)){
                var r = (hexNum >> 16) & 0xFF
                var g = (hexNum >> 8) & 0xFF
                var b = (hexNum) & 0xFF
                
                self.textColor = UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
            }
        }
    }
}

extension UIView{
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor {
        get {
            //                return UIColor(CGColor: layer.borderColor!)
            return UIColor.init(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
    @IBInspectable var hexRgbColor: NSString {
        get {
            return "0xffffff";
        }
        set {
            
            let scanner = Scanner(string: newValue as String)
            var hexNum = 0 as UInt32
            
            if (scanner.scanHexInt32(&hexNum)){
                var r = (hexNum >> 16) & 0xFF
                var g = (hexNum >> 8) & 0xFF
                var b = (hexNum) & 0xFF
                
                self.backgroundColor = UIColor(red: CGFloat(r)/255.0, green: CGFloat(g)/255.0, blue: CGFloat(b)/255.0, alpha: 1.0)
            }
            
        }
    }
    
    @IBInspectable var onePx: Bool {
        get {
            return self.onePx
        }
        set {
            if (onePx == true){
                self.frame = CGRect.init(x: self.frame.origin.x, y: self.frame.origin.y, width: self.frame.size.width, height: 1 / UIScreen.main.scale)
                //                    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, 1 / UIScreen.main.scale)
            }
        }
    }
}



