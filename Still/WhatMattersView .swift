//
//  WhatMattersView .swift
//  Still
//
//  Created by Siddhant Singh on 16/02/26.
//

import SwiftUI

struct WhatMattersView: View {
    
    // Simple data model
    struct AnchorItem: Identifiable {
        let id = UUID()
        let imageName: String
        let title: String
        let description: String
    }
    
    // Stable, predictable anchors
    let items: [AnchorItem] = [
        AnchorItem(
            imageName: "person.fill",
            title: "Ananya",
            description: "She is your daughter.\nShe cares about you."
        ),
        AnchorItem(
            imageName: "sofa.fill",
            title: "Living Room",
            description: "This is a place where you feel comfortable."
        ),
        AnchorItem(
            imageName: "person.2.fill",
            title: "Rahul",
            description: "He is your son.\nHe checks in on you."
        ),
        AnchorItem(
            imageName: "tree.fill",
            title: "Garden",
            description: "You like sitting here.\nIt feels familiar."
        )
    ]
    
    var body: some View {
        
        ZStack {
            
            // Background Color
            Color("BackgroundPrimary")
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 40) {
                    
                    VStack(spacing: 8) {
                        
                        Text("What Matters")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                        
                        Text("These are parts of your life that matter to you.")
                            .font(.body)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 32)
                            .foregroundColor(.secondary)
                            .opacity(0.9)
                    }
                    .padding(.top)
                    
                    ForEach(items) { item in
                        AnchorCard(item: item)
                    }
                    
                    Spacer(minLength: 40)
                }
                }
                .padding()
            }
            //.navigationTitle("What Matters")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
    
    struct AnchorCard: View {
        
        let item: WhatMattersView.AnchorItem
        
        var body: some View {
            VStack(spacing: 16) {
                
                Image(systemName: item.imageName)
                    .font(.system(size: 40))
                    .foregroundColor(.secondary)
                
                Text(item.title)
                    .font(.title3)
                    .fontWeight(.medium)
                
                Text(item.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
            }
            .padding(.vertical, 32)
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 22)
                    .fill(.ultraThinMaterial)
            )
        }
    }

