//
//  PrefixHeader.swift
//  SwiftPrac
//
//  Created by zhangqq on 2018/3/28.
//  Copyright © 2018年 张强. All rights reserved.
//

import UIKit
import Foundation

//三方
import SnapKit



let SCREENWIDTH = UIScreen.main.bounds.size.width
let SCREENHEIGHT = UIScreen.main.bounds.size.height

func W(w:Int) -> CGFloat {
    let width = CGFloat(w)
    return width*(SCREENWIDTH/375)
}

func H(h:Int) -> CGFloat {
    let height = CGFloat(h)
    return height*(SCREENHEIGHT/667)
}

func rectSize(w:CGFloat,h:CGFloat) -> CGSize {
    return CGSize(width:w,height:h)
}

func rectPoint(x:CGFloat,y:CGFloat) -> CGPoint{
    return CGPoint(x:x,y:y)
}

func rectFrame(x:CGFloat,y:CGFloat,width:CGFloat,height:CGFloat) -> CGRect {
    var rect = CGRect()
    rect.size = rectSize(w: width, h: height)
    rect.origin = rectPoint(x: x, y: y)
    return rect
}

func ColorRGB (r:CGFloat, g:CGFloat, b:CGFloat) ->(UIColor) {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}

func ColorRGBA (r:CGFloat, g:CGFloat, b:CGFloat, a:CGFloat) ->(UIColor) {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

func localImage(localname:String) -> UIImage?{
    return UIImage(named:localname)
}

func imageFromColor(color: UIColor, viewSize: CGSize) -> UIImage{
    let rect: CGRect = CGRect(x: 0, y: 0, width: viewSize.width, height: viewSize.height)
    UIGraphicsBeginImageContext(rect.size)
    let context: CGContext = UIGraphicsGetCurrentContext()!
    context.setFillColor(color.cgColor)
    context.fill(rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsGetCurrentContext()
    return image!
    
}
