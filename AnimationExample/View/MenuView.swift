//
//  MenuView.swift
//  AnimationExample
//
//  Created by Omkar Zanjale on 15/11/24.
//

import SwiftUI

struct MenuView: View {
    
    var body: some View {
        NavigationView {
            List {
                VStack {
                    NavigationLink(destination: InfiniteShapeAnimationView()) {
                        LoaderMenuRow(title: "Infinity Loader", icon: "infinity", backgroundColor: .blue)
                    }
                    SeparatorView()
                }
                .listRowSeparator(.hidden)
                
                VStack {
                    NavigationLink(destination: CartLoadingAnimationView()) {
                        LoaderMenuRow(title: "Shopping Cart Loader", icon: "cart", backgroundColor: .green)
                    }
                    SeparatorView()
                }
                .listRowSeparator(.hidden)
                
                VStack {
                    NavigationLink(destination: BLELoaderView()) {
                        LoaderMenuRow(title: "Bluetooth Loader", icon: "dot.radiowaves.left.and.right", backgroundColor: .purple)
                    }
                    SeparatorView()
                }
                .listRowSeparator(.hidden)
                
                NavigationLink(destination: BouncingDotsLoaderView()) {
                    LoaderMenuRow(title: "Bouncing Dots Loader", icon: "circle.grid.3x3.fill", backgroundColor: .orange)
                }
                .listRowSeparator(.hidden)
                .padding(.bottom, 4)
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Loader Animations")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
    
    @ViewBuilder
    func SeparatorView() -> some View {
        RoundedRectangle(cornerRadius: 4)
            .foregroundStyle(Color.gray)
            .frame(height: 1)
            .padding(.top, 4)
    }
}


#Preview {
    MenuView()
}


struct LoaderMenuRow: View {
    let title: String
    let icon: String
    let backgroundColor: Color
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .foregroundColor(.white)
                .frame(width: 36, height: 36)
                .background(backgroundColor)
                .clipShape(Circle())
            
            Text(title)
                .font(.headline)
                .foregroundColor(.primary)
            
            Spacer()
        }
    }
}
