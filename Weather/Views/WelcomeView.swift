//
//  WelcomeView.swift
//  Weather
//
//  Created by RESAN on 15/05/2024.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack{
            
            AsyncImage(url: URL(string: "https://cdn11.bigcommerce.com/s-hii7479o/images/stencil/original/products/10299/26581/squirrel__90979.1526433819.png?c=2")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250)
            } placeholder: {
                ProgressView()
            }
            
            VStack(spacing:20){
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
            
            LocationButton(.shareCurrentLocation){
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(/*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
