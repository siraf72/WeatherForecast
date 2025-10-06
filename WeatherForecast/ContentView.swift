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
            DayForecast()
            
            .padding()
            VStack {
                Text("Tue")
                Text("High: 28")
                Text("Low: -8")
                Image(systemName: "cloud.snow")
                    .foregroundStyle(Color.blue)
                    .shadow(radius: 4)
          

            }
            .padding()
            
        }
    }
}

struct DayForecast: View {
    var body: some View {
        VStack {
            Text("Mon")
            Text("High: 48")
            Text("Low: 38")
            Image(systemName: "sun.max")
                .foregroundStyle(Color.yellow)
                .shadow(radius: 4)
        }
    }
}

#Preview {
    ContentView()
}
