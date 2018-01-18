//
//  CGFloat.swift
//  TemplateProject
//
//  Created by 酒井邦也 on 2017/03/28.
//  Copyright © 2017年 酒井邦也. All rights reserved.
//

import Foundation

 extension Float {
    /// valueの倍数に切り捨て
    func floorBy(value: Float) -> Float {
        return floor(self / value) * value
    }
}
