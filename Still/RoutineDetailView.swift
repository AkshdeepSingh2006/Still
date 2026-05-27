//
//  RoutineDetailView.swift
//  Still
//
//  Created by Siddhant Singh on 12/02/26.
//

import SwiftUI

struct RoutineDetailView: View {
    
    let title: String
    let imageName: String
    let primaryLine: String
    let supportingLine1: String
    let supportingLine2: String
    let groundingLine: String
    
    var body: some View {
        
        ZStack {
            
            Color("BackgroundPrimary")
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                Spacer()
                    .frame(height: 20)
                
                Text(title)
                    .font(.system(size: 32, weight: .regular))
                
                Spacer(minLength: 40)
                
                VStack(spacing: 28) {
                    
                    Image(systemName: imageName)
                        .font(.system(size: 64))
                        .foregroundColor(.secondary)
                    
                    VStack(spacing: 16) {
                        
//                        Text(primaryLine)
//                            .font(.system(size: 24, weight: .medium))
                        
                        Text(primaryLine)
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        Text(supportingLine1)
                            .font(.title3)
                        
                        Text(supportingLine2)
                            //.font(.system(size: 19))
                            .font(.title3)
                        
                        Text(groundingLine)
                            //.font(.system(size: 17))
                            .font(.body)
                            .foregroundColor(.secondary)
                            .opacity(0.8)
                            .padding(.top, 6)
                    }
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 36)
                }
                
                Spacer(minLength: 80)
            }
            .padding(.horizontal, 28)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}
