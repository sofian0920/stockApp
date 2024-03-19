//
//  TimerView.swift
//  SoftoriumTestApp
//
//  Created by Sofia Norina on 18.03.2024.
//

import SwiftUI

struct TimerView: View {
    @Binding var timeString: String
    init(timeString: Binding<String>) {
        self._timeString = timeString
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text("Timer")
                .foregroundColor(.gray)
            HStack {
                Image(systemName: "minus.circle")
                    .frame(width: 15, height: 15)
                    .background(Color.white.opacity(.ulpOfOne))
                    .onTapGesture {
                        subtractOneSecond()
                    }
                TextField("", text: $timeString)
                    .keyboardType(.decimalPad)
                    .frame(width: 50)
                    .foregroundColor(.white)
                Image(systemName: "plus.circle")
                    .onTapGesture {
                        addOneSecond()
                    }
            }
            .foregroundColor(.gray)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .padding(.horizontal)
        .background(Color.slotBackground)
        .cornerRadius(12)
    }
    
    
    func addOneSecond() {
        updateTime(by: 1)
    }
    
    func subtractOneSecond() {
        updateTime(by: -1)
    }
    
    private func updateTime(by seconds: TimeInterval) {
        
        let formatter = DateFormatter()
        formatter.dateFormat = "mm:ss"
        
        if var currentTime = formatter.date(from: timeString) {
            currentTime.addTimeInterval(TimeInterval(seconds))
            
            
            let minTime = formatter.date(from: "00:00") ?? Date()
            currentTime = max(currentTime, minTime)
            
            timeString = formatter.string(from: currentTime)
        }
    }
}

struct CountButton_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timeString: .constant("00:00"))
    }
}
