//
//  CartShape.swift
//  AnimationExample
//
//  Created by Omkar Zanjale on 15/11/24.
//

import SwiftUI

struct CartShape: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let midX = rect.midX
        let minX = rect.minX
        let maxX = rect.maxX
        let midY = rect.midY
        let minY = rect.minY
        let maxY = rect.maxY
        
        path.move(to: CGPoint(x: minX, y: minY))
        path.addLine(to: CGPoint(x: (midX/2) - 10, y: minY))
        
      
        path.addLine(to: CGPoint(x: (midX/2) - 5, y: midY - (midY / 2)))
        
        path.addLine(to: CGPoint(x: maxX, y: midY - (midY / 2)))
        
        path.addLine(to: CGPoint(x: midX + (midX/2) + 10, y: midY + (midY / 2)))
        
        path.addLine(to: CGPoint(x: (midX/2) + 5, y: midY + (midY / 2)))
      
        path.addLine(to: CGPoint(x: (midX/2) + 10, y: maxY))
        
        path.addLine(to: CGPoint(x: midX + (midX/2)+5, y: maxY))
        
        
        return path
    }
}
