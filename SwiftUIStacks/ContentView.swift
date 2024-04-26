//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by Simbarashe Mupfururirwa on 2024/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack(spacing: 15){
                PricingView(title: "Basic", price: "$9", textColor: .white, backgroundColour: .blue)
                ZStack {
                    PricingView(title: "Pro", price: "$19", textColor: .black, backgroundColour: Color(red: 240/255, green: 240/255, blue: 240/255))
                    
                    Text("Best Plan")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .cornerRadius(5)
                        .offset(x: 0, y: 87)
                }
            }
            .padding(.horizontal)
            
            ZStack {
                PricingView(title: "Team", price: "$299", textColor: .white, backgroundColour: .black, icon: "wand.and.rays")
                    .padding()
                
                Text("Best Plan for a Team")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .cornerRadius(5)
                    .offset(x: 0, y: 110)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2){
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }
            Spacer()
        }
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var backgroundColour: Color
    var icon: String?
    
    var body: some View {
        VStack{
            if let icon = icon {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            }
            
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(backgroundColour)
        .cornerRadius(10)
    }
}
