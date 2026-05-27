//
//  ContentView.swift
//  Still
//
//  Created by Siddhant Singh on 09/02/26.
//

import SwiftUI

struct OrientationHomeView: View {
    
    var todayDateText: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter.string(from: Date())
    }
    
    var body: some View {
        ZStack {
            
            // Background Color
            Color("BackgroundPrimary")
                .ignoresSafeArea()

            
            VStack(spacing: 0) {

                Spacer(minLength: 40)

                VStack(spacing: 16) {
                    Text("Hello, Meera.")
                        .font(.system(size: 32, weight: .regular))

                    Text(todayDateText)
                        .font(.title3)
                        .foregroundColor(.secondary)

                    Text("You are safe here. Take your time.")
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 32)
                }

                Spacer()

                VStack(spacing: 28) {
                    NavigationLink(destination: DayOverviewView()) {
                        Text("What’s my day like?")
                            .calmButton()
                    }

                    NavigationLink(destination: WhatMattersView()) {
                        Text("What matters to me")
                            .calmButton()
                    }

                    NavigationLink(destination: ThisMomentView()) {
                        Text("This moment")
                            .calmButton()
                    }
                }

                Spacer(minLength: 40)
            }
            .padding(.horizontal, 28)
        }
        
        
    }
}


struct CalmButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title3)
            //.fontWeight(.medium)
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 28)
            .background(
                RoundedRectangle(cornerRadius: 26)
                    .fill(Color.white.opacity(0.55))
            )
            .shadow(color: .black.opacity(0.05), radius: 10, y: 6)
    }
}

extension View {
    func calmButton() -> some View {
        self.modifier(CalmButtonStyle())
    }
}
