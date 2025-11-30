//
//  MainTimerView.swift
//  PulseLoop
//
//  Created by Dovydas Dorofejevas on 30/11/2025.
//

import SwiftUI

struct MainTimerView: View {
    
    @State private var time: Int = 15
    
    var body: some View {
        VStack {
            VStack {
                Text(String(format: "00:%02d", time))
                    .font(.system(size: 60))
                    .fontWeight(.bold)
                    .foregroundStyle(Color.mDark)
            }
            .padding(.top, 80)
            VStack {
                loadWorkoutButton()
                
                Spacer()
                
                Button(action: {
                    time = 12
                    print("Tapped image button")
                }) {
                    Image("start_button")
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.mDark)
            .clipShape(RoundedRectangle(cornerRadius: 30))
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.mYellow)
        .ignoresSafeArea()
        
    }
}

#Preview {
    MainTimerView()
}

struct loadWorkoutButton: View {
    var body: some View {
        Button(action: {print("load workout pressed")}) {
            Text("Load Previous Workout")
                .font(Font.system(size: 20))
                .foregroundStyle(Color.mDark)
        }
        .frame(width: 320, height: 40)
        .background(Color.loadW)
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.top, 40)
    }
}
