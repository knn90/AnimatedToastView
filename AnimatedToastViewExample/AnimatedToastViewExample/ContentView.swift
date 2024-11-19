//
//  ContentView.swift
//  AnimatedToastViewExample
//
//  Created by Khoi Nguyen on 19/11/24.
//

import SwiftUI
import AnimatedToastView

struct ContentView: View {
    var body: some View {
        VStack(spacing: 16) {
            ZStack {
                background
                AnimatedToastView(displayDuration: 2.0) {
                    sampleText
                }
            }
            .frame(height: 100)
            
            HStack {
                background
                AnimatedToastView(displayDuration: 3.0) {
                    sampleText
                        .transition(.move(edge: .trailing))
                }
            }
            .frame(height: 100)
            
            HStack {
                AnimatedToastView(displayDuration: 3.0) {
                    sampleText
                        .transition(.move(edge: .leading))
                }
                background
            }
            .frame(height: 100)
            
            VStack() {
                background
                AnimatedToastView(displayDuration: 4.0) {
                    sampleText
                        .transition(.move(edge: .bottom))
                }
            }
            .frame(height: 100)
        }
        .padding()
    }
    
    @ViewBuilder
    private var background: some View {
        LinearGradient(
            gradient: Gradient(colors: [Color.blue.opacity(0.3), Color.purple.opacity(0.3)]),
            startPoint: .top,
            endPoint: .bottom
        )
    }

    @ViewBuilder
    private var sampleText: some View {
        Text("Welcome to SwiftUI!")
            .font(.headline)
            .padding()
            .background(Color.green)
            .cornerRadius(12)
            .shadow(radius: 5)
    }

}

#Preview {
    ContentView()
}
