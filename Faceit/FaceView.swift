//
//  FaceView.swift
//  Faceit
//
//  Created by Seunghoon Jeon on 23/08/2018.
//  Copyright © 2018 Seunghoon Jeon. All rights reserved.
//

import UIKit

class FaceView: UIView {

    //그려줄 머리의 반경을 잡는 메소드
    //bounds를 활용해서 기준점으로 잡는(skullCenter) 부분부터 그릴수 있도록 하기 위해
    var skullRadius = min(bounds.size.width, bounds.size.height) / 2
    var skullCenter = CGPoint(x: bounds.midX, y: bounds.midY)
    
    override func draw(_ rect: CGRect) {
        
        //실제로 그려질 대상
        let skull = UIBezierPath(arcCenter: skullCenter, radius: skullRadius, startAngle: 0.0, endAngle: CGFloat(2*Double.pi), clockwise: false)
        skull.lineWidth = 5.0
        UIColor.blue
        skull.stroke()
    }

}
