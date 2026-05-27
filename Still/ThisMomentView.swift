//
//  ThisMomentView.swift
//  Still
//
//  Created by Siddhant Singh on 17/02/26.
//

import SwiftUI

struct ThisMomentView: View {
    
    var currentDateText: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter.string(from: Date())
    }
    
    var currentTimeText: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
    
    var timeOfDay: String {
        let hour = Calendar.current.component(.hour, from: Date())
        
        switch hour {
        case 5..<12:
            return "morning"
        case 12..<17:
            return "afternoon"
        default:
            return "evening"
        }
    }
    
    var body: some View {
        
        ZStack {
            
            // Background Color
            Color("BackgroundPrimary")
                .ignoresSafeArea()
            VStack(spacing: 0) {
                
                Spacer(minLength: 60)
                
                // Date
                Text(currentDateText)
                    .font(.callout)
                    .foregroundColor(.secondary)
                
                // Large Time
                Text(currentTimeText)
                    .font(.system(size: 52, weight: .semibold))
                
                // Time of Day
                Text("It is \(timeOfDay).")
                    .font(.title3)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                // Location + Safety
                VStack(spacing: 8) {
                    Text("You are at home.\n")
                        .font(.title3)
                    
                    Text("You are safe.")
                        .font(.title3)
                }
                .multilineTextAlignment(.center)
                
                Spacer()

                VStack(spacing: 16) {
                    
                    BreathingCircle()
                    
                    Text("Take one slow breath.")
                        .font(.callout)
                        .foregroundColor(.primary.opacity(0.7))
                }

                Spacer()
                
                // Reassurance line
                Text("Nothing needs to be rushed.")
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                
                Spacer(minLength: 60)
            }
            .padding()
            .navigationTitle("This Moment")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct BreathingCircle: View {
    @State private var expand = false
    
    var body: some View {
        Circle()
            .fill(Color.primary.opacity(0.08))
            .frame(width: expand ? 140 : 110)
            .animation(
                .easeInOut(duration: 4)
                .repeatForever(autoreverses: true),
                value: expand
            )
            .onAppear {
                expand = true
            }
    }
}

