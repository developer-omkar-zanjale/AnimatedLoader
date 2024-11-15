//
//  InfinityShape.swift
//  AnimationExample
//
//  Created by Omkar Zanjale on 15/11/24.
//

import SwiftUI

struct InfinityShape: Shape {
    func path(in rect: CGRect) -> Path {
        let midX = rect.midX
        let midY = rect.midY
        
        var path = Path()
        path.addArc(center: CGPoint(x: midX/2, y: midY), radius: rect.height/2, startAngle: Angle(degrees: 45), endAngle: Angle(degrees: 315), clockwise: false)
        path.addArc(center: CGPoint(x: midX + (midX/2), y: midY), radius: rect.height/2, startAngle: Angle(degrees: 135), endAngle: Angle(degrees: 225), clockwise: true)
        
        path.closeSubpath()
        
        return path
    }
    
}

struct InfinityShape_Previews: PreviewProvider {
    
    static var previews: some View {
        InfinityShape()
            .stroke(lineWidth: 4)
            .foregroundColor(.gray)
            .frame(height: 130)
            .background {
                Color.red
            }
            .padding(.horizontal)
        
    }
}

