//
//  BLELoaderView.swift
//  AnimationExample
//
//  Created by Omkar Zanjale on 15/11/24.
//

import SwiftUI

struct BLELoaderView: View {
    
    @State var isMoveFirstCircle: Bool = false
    @State var isMoveSecCircle: Bool = false
    @State var isMoveThirdCircle: Bool = false
    @State var isAnimateBluetooth: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color.yellow, Color.orange, Color.red.opacity(0.9)], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            //
            //MARK: Outer Ring
            //
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, dash: []))
                .foregroundColor(.white)
                .frame(width: 200)
                .opacity(0.5)
            //
            //MARK: Inner Ring
            //
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, dash: []))
                .foregroundColor(.white)
                .frame(width: 150)
                .opacity(0.5)
            //
            //MARK: Inner Ring Circles
            //
            Circle()
                .frame(width: 10)
                .foregroundColor(.white)
                .offset(y: -75)
                .rotationEffect(Angle(degrees: 270))
                .rotationEffect(Angle(degrees: isMoveSecCircle ? 0 : 360))
            
            //
            //MARK: Outer Ring Circles
            //
            Circle()
                .frame(width: 10)
                .foregroundColor(.white)
                .offset(y: -100)
                .rotationEffect(Angle(degrees: isMoveSecCircle ? 0 : 360))
                .onAppear {
                    withAnimation(.linear.repeatForever(autoreverses: false).speed(0.2)) {
                        isMoveSecCircle = true
                    }
                }
            Circle()
                .frame(width: 10)
                .foregroundColor(.white)
                .offset(y: -100)
                .rotationEffect(Angle(degrees: 90))
                .rotationEffect(Angle(degrees: isMoveSecCircle ? 0 : 360))
                .onAppear {
                    withAnimation(.linear.repeatForever(autoreverses: false).speed(0.2)) {
                        isMoveSecCircle = true
                    }
                }
            
            
            Circle()
                .frame(width: 10)
                .foregroundColor(.white)
                .offset(y: -100)
                .rotationEffect(Angle(degrees: 180))
                .rotationEffect(Angle(degrees: isMoveThirdCircle ? 0 : 360))
                .onAppear {
                    withAnimation(.linear.repeatForever(autoreverses: false).speed(0.2)) {
                        isMoveThirdCircle = true
                    }
                }
            
            //
            //MARK: Bluetooth
            //
            Image(ImageConstant.bluetooth)
                .resizable()
                .frame(width: 70, height: 70)
                .rotation3DEffect(Angle(degrees: isAnimateBluetooth ? 360 : 0), axis: (x: 0, y: 360, z: 0))
                .onAppear {
                    withAnimation(.linear.repeatForever(autoreverses: false).speed(0.2)) {
                        isAnimateBluetooth = true
                    }
                }
        }
        
    }
}

#Preview {
    BLELoaderView()
}
