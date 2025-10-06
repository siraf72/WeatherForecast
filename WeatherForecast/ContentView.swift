//
//  ContentView.swift
//  WeatherForecast
//
//  Created by User1 on 6/10/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            DayForecast(day: "Mon", highTemp: 10, lowTemp: 4)
            DayForecast(day: "Tue", highTemp: 20, lowTemp: 3)
            DayForecast(day: "Wed", highTemp: 40, lowTemp: 33)
            }
            .padding()
            
    }
}

struct DayForecast: View {
    let day: String
    let highTemp: Int
    let lowTemp: Int
    
    var isCold: Bool {
        if lowTemp < 10 {
            return true}
        else {
            return false}
        }
    
    
    var iconName: String {
        
        if isCold {
            return "cloud.rain.fill"
            
        } else {
            return "sun.max.fill"
        }
    }
    
    var iconColor: Color {
        if isCold {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
        var body: some View {
            
            VStack {
                Text(day)
                    .font(.largeTitle)
                Image(systemName: iconName)
                    .foregroundStyle(iconColor)
                    .shadow(radius: 4)
                    .font(.largeTitle)
                Text("High \(highTemp) º")
                    .fontWeight(Font.Weight.semibold)
                    .padding(5)
            
                Text("Low \(lowTemp)º")
                
                
            }
            .padding()
        }
    }
    
#Preview {
    ContentView()
}
