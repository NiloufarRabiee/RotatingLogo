//
//  LogoView.swift
//  appetizers1
//
//  Created by Niloufar Rabiee on 14/10/24.
//

import SwiftUI


struct LogoView: View {
    let text = "Apparat is your companion for a smoother student journey in Napoli."
       let radius: CGFloat = 120 // Radius of the circle
       @State private var rotation: Double = 0 // State variable to animate rotation

    var body: some View {
        ZStack {
            Color (.secondarySystemFill)
                .ignoresSafeArea()
            VStack {
                ZStack{
                    Image(systemName: "rainbow")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100 , height: 100)
                        .symbolRenderingMode(.multicolor)
                        .symbolEffect(.variableColor .reversing)
                        .symbolEffect(.rotate)
                        .foregroundStyle(.orange)
                    ZStack {
                                GeometryReader { geometry in
                                    let center = CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2)
                                    let characters = Array(text) // Split text into characters
                                    ForEach(0..<characters.count, id: \.self) { index in
                                        let angle = Double(index) * (360.0 / Double(characters.count)) + rotation // Position based on index and rotation
                                        let xOffset = radius * cos(angle * .pi / 180)
                                        let yOffset = radius * sin(angle * .pi / 180)

                                        Text(String(characters[index]))
                                            .font(.system(size: 14, weight: .bold)) // Customize font
                                            .position(x: center.x + xOffset, y: center.y + yOffset)
                                            .rotationEffect(.degrees(angle)) // Rotate each character towards the center
                                    }
                                }
                                .frame(width: radius * 2 + 100, height: radius * 2 + 100) // Set size of the circle
                            }
                            .onAppear {
                                withAnimation(Animation.linear(duration: 10).repeatForever(autoreverses: false)) {
                                    rotation = 360 // Rotate the text infinitely
                                }
                            }
                    
                }
                
                
            
            }
        }
    }
}

#Preview {
    LogoView()
}
