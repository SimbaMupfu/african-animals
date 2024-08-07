//
//  MotionAnimationView.swift
//  African Animals
//
//  Created by Simbarashe Mupfururirwa on 2024/05/12.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating = false
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x: randomCoordinate(max: geometry.size.width),
                            y: randomCoordinate(max: geometry.size.height))
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay()))
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }
            }
            .drawingGroup()
        }
    }
    
    private func randomCoordinate(max: CGFloat) -> CGFloat{
        return CGFloat.random(in: 0...max)
    }
    
    private func randomSize() -> CGFloat{
        return CGFloat(Int.random(in: 10...300))
    }
    
    private func randomScale() -> CGFloat{
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    private func randomSpeed() -> CGFloat {
        return Double.random(in: 0.025...1.0)
    }
    
    private func randomDelay() -> CGFloat{
        return Double.random(in: 0...2)
    }
}

#Preview {
    MotionAnimationView()
}
