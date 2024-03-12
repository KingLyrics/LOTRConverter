//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Ekomobong Edeme on 11/03/2024.
//

import SwiftUI

struct ExchangeInfo: View {
    
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        ZStack{
            //Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                //Title text
                Text("Exchange Rates")
                    .font(.title)
                    .tracking(3)
                
                //Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title2)
                    .padding()
                
                //Exchange rates
                ExchangeRate(exchangeText: "One Gold piece = 4 Gold pennies", imageName1: .goldpiece, imageName2: .goldpenny)
                
                ExchangeRate(exchangeText: "One Gold penny = 4 Silver pieces", imageName1: .goldpenny, imageName2: .silverpiece)
                
                ExchangeRate(exchangeText: "One Silver piece = 4 Silver pennies", imageName1: .silverpiece, imageName2: .silverpenny)
                
                ExchangeRate(exchangeText: "One Silver penny = 4 copper pennies", imageName1: .silverpenny , imageName2: .copperpenny)
                
                
                
                
                //Button
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExchangeInfo()
}


