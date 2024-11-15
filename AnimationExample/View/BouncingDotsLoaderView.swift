//
//  BouncingDotsLoaderView.swift
//  AnimationExample
//
//  Created by Omkar Zanjale on 15/11/24.
//

import SwiftUI

struct BouncingDotsLoaderView: View {
    
    @State private var isAnimateFirstCircle = false
    @State private var isAnimateSecondCircle = false
    @State private var isAnimateThirdCircle = false
    
    var body: some View {
        HStack(spacing: 4) {
            Circle()
                .frame(width: 20)
                .offset(y: isAnimateFirstCircle ? -50 : 50)
                .foregroundColor(.red)
            Circle()
                .frame(width: 20)
                .offset(y: isAnimateSecondCircle ? -50 : 50)
                .foregroundColor(.yellow)
            Circle()
                .frame(width: 20)
                .offset(y: isAnimateThirdCircle ? -50 : 50)
                .foregroundColor(.blue)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.linear.repeatForever(autoreverses: true).speed(0.8)) {
                    isAnimateFirstCircle = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.linear.repeatForever(autoreverses: true).speed(0.8)) {
                    isAnimateSecondCircle = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                withAnimation(.linear.repeatForever(autoreverses: true).speed(0.8)) {
                    isAnimateThirdCircle = true
                }
            }
        }
    }
}

#Preview {
    BouncingDotsLoaderView()
}
