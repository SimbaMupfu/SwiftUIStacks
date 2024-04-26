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
        
            HStack{
                PricingView(title: "Basic", price: "$9", textColor: .white, backgroundColour: .blue)
                PricingView(title: "Pro", price: "$19", textColor: .black, backgroundColour: .orange)
            }
            .padding(.horizontal)
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
        VStack(alignment: .leading, spacing: 2){
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var backgroundColour: Color
    
    var body: some View {
        VStack{
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
