//
//  DayOverviewView.swift
//  Still
//
//  Created by Siddhant Singh on 10/02/26.
//

import SwiftUI

struct DayOverviewView: View {
    
    var body: some View {
        
        ZStack {
            
            // Background Color
            Color("BackgroundPrimary")
                .ignoresSafeArea()
            VStack(spacing: 0) {

                Spacer(minLength: 40)

                VStack(spacing: 14) {
                    Text("Your day")
                        .font(.system(size: 32, weight: .regular))

                    Text("Today is divided into simple parts.")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 32)
                    Text("You can take it one part at a time.")
                        .font(.body)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 32)
                }
                
                Spacer()
                
                VStack(spacing: 28) {
                    
                    NavigationLink(destination: RoutineDetailView(
                        title: "Morning",
                        imageName: "sunrise.fill",
                        primaryLine: "It is morning.",
                        supportingLine1: "You can wake up slowly.",
                        supportingLine2: "Something warm may feel nice.",
                        groundingLine: "This part of the day is gentle."
                    )) {
                        DayPartButton(title: "Morning")
                    }
                    
                    NavigationLink(destination: RoutineDetailView(
                        title: "Afternoon",
                        imageName: "cup.and.saucer.fill",
                        primaryLine: "It is afternoon.",
                        supportingLine1: "This part of the day is steady.",
                        supportingLine2: "You can rest or spend time somewhere familiar.",
                        groundingLine: "There is no rush."
                    )) {
                        DayPartButton(title: "Afternoon")
                    }
                    
                    NavigationLink(destination: RoutineDetailView(
                        title: "Evening",
                        imageName: "lamp.table.fill",
                        primaryLine: "It is evening.",
                        supportingLine1: "The day is beginning to slow down.",
                        supportingLine2: "You can take things gently now.",
                        groundingLine: "Rest is near"
                    )) {
                        DayPartButton(title: "Evening")
                    }
                }
                Spacer(minLength: 40)
            }
            .padding(.horizontal, 28)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
    struct DayPartButton: View {
        let title: String
        
        var body: some View {
            Text(title)
                .font(.title3)
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
}
