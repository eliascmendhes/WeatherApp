//
//  WelcomeView.swift
//  Weather
//
//  Created by Elias Camilo on 25/12/23.
//

import SwiftUI
import CoreLocationUI
struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    var body: some View {
        VStack{
            VStack(spacing: 2) {
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                Text("Please share your location to get the weather in your area.")
            }
            .multilineTextAlignment(.center)
            .padding()
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

