//
//  InfiniteShapeAnimationView.swift
//  AnimationExample
//
//  Created by Omkar Zanjale on 15/11/24.
//

import SwiftUI


struct InfiniteShapeAnimationView: View {
    
    @State private var isAnimateFirst = false
    @State private var isAnimateSecond = false
    
    var body: some View {
        ZStack {
            //BACKGROUND
            InfinityShape()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
            
            //GRADIENT COLOR
            LinearGradient(
                colors: [.red, .orange, .blue, .green, .yellow],
                startPoint: .leading,
                endPoint: .trailing
            )
            .mask(
            InfinityShape()
                .trim(from: 0, to: isAnimateSecond ? 0.15 : 1)
                .stroke(lineWidth: 15)
                .foregroundColor(.black)
                .onAppear(){
                    withAnimation(.linear.speed(0.2).repeatForever(autoreverses: false)) {
                        self.isAnimateSecond = true
                    }

                }
            )
            //OVERLAY
            InfinityShape()
                .trim(from: 0, to: isAnimateFirst ? 0 : 0.9)
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .onAppear(){
                    withAnimation(.linear.speed(0.2).repeatForever(autoreverses: false)) {
                        self.isAnimateFirst = true
                    }
                }
                
        }
        .padding()
        .frame(width: width/1.37, height: 130)
    }
}

struct InfiniteShapeAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        InfiniteShapeAnimationView()
    }
}

