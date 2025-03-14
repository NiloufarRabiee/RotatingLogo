//
//  circle progress.swift
//  appetizers1
//
//  Created by Niloufar Rabiee on 17/10/24.
//

import SwiftUI

struct circle_progress: View {
    @Binding var progress: CGFloat
    var body: some View {
        ZStack {
                    // placeholder
                    Circle()
                        .stroke(lineWidth: 20)
                        .foregroundColor(.gray)
                        .opacity(0.2)
                    
                    // progress circle
                    Circle()
                        .trim(from: 0.0, to: min(progress, 1.0))
                        .stroke(AngularGradient(colors: [.yellow, .orange, .pink, .red], center: .center), style: StrokeStyle(lineWidth: 20, lineCap: .butt, lineJoin: .miter))
                        .rotationEffect(.degrees(-90))
                        .shadow(radius: 2)
                    
                    Text("\(String(format: "%0.0f", progress * 100))%")
                        .font(.largeTitle)
                    
                }
                .frame(width: 200, height: 200)
                .padding()
                .animation(.easeInOut, value: progress)
            }
    }

struct CustomProgressViewUser: View {
    @State private var progress: CGFloat = 0.0
    var body: some View {
        VStack {
            circle_progress(progress: $progress)
                .padding(.bottom, 40)
            Slider(value: $progress, in: 0.0...1.0)
            
        }
        .padding()
    }
}

#Preview {
    CustomProgressViewUser()
}
