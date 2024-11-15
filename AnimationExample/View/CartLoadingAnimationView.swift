//
//  CartLoadingAnimationView.swift
//  AnimationExample
//
//  Created by Omkar Zanjale on 15/11/24.
//

import SwiftUI

struct CartLoadingAnimationView: View {
    
    @State private var isAnimateCartShape = false
    @State private var isAnimateWheels = false
    
    
    var body: some View {
        VStack(spacing: 10) {
            
            ZStack {
                CartShape()
                    .stroke(lineWidth: 8)
                CartShape()
                    .trim(from: 0, to: isAnimateCartShape ? 0 : 1)
                    .stroke(lineWidth: 8)
                    .foregroundColor(.blue)
                
            }
            .foregroundColor(.gray)
            
            HStack(alignment: .top, spacing: 0) {
                ZStack {
                    Circle()
                        .stroke(lineWidth: 8)
                        .foregroundColor(.gray)
                        .frame(width: 20, height: 20)
                    Circle()
                        .trim(from: 0, to: isAnimateWheels ? 0 : 1)
                        .stroke(lineWidth: 6)
                        .rotationEffect(Angle(degrees: isAnimateWheels ? 0 : 360))
                }
                .frame(width: 20, height: 20)
                .padding([.trailing, .leading], 8)
                Spacer(minLength: 1)
                ZStack {
                    Circle()
                        .stroke(lineWidth: 8)
                        .foregroundColor(.gray)
                        .frame(width: 20, height: 20)
                    Circle()
                        .trim(from: 0, to: isAnimateWheels ? 0 : 1)
                        .stroke(lineWidth: 6)
                        .rotationEffect(Angle(degrees: isAnimateWheels ? 0 : 360))
                }
                .frame(width: 20, height: 20)
            }
            .padding(.leading, 5)
            .frame(width: 60, height: 20)
            .foregroundColor(.blue)
        }
        .frame(width: 100, height: 100)
        .onAppear {
            withAnimation(.linear.repeatForever(autoreverses: false).speed(0.2)) {
                isAnimateWheels = true
            }
            
            withAnimation(.linear.repeatForever(autoreverses: true).speed(0.2)) {
                isAnimateCartShape = true
            }
        }
    }
}

#Preview {
    CartLoadingAnimationView()
}
