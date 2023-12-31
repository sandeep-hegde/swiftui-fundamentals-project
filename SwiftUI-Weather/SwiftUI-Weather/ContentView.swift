//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Sandeep Hegde on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight : Bool = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack() {
                CityTextView(cityName: "Bengaluru, IN")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ? 23 : 28)
                
                HStack(spacing: 20.0) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 26)
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 29)
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 23)
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sun.haze.fill",
                                   temperature: 26)
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.fill",
                                   temperature: 27)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .yellow)
                }
                
                Spacer()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
        }
    }
}


struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)//.opacity(0.8)
            .ignoresSafeArea()
    }
}


struct CityTextView: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .rounded))
            .foregroundStyle(.white)
            .padding()
    }
}


struct MainWeatherStatusView: View {
    
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium, design: .rounded))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}



