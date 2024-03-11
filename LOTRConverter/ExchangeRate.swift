//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Ekomobong Edeme on 12/03/2024.
//

import SwiftUI

struct ExchangeRate: View {
    
    let exchangeText:String
    let imageName1:ImageResource
    let imageName2:ImageResource
    
    var body: some View {
        HStack{
            //Left currency image
            Image(imageName1)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            //exchange rate text
            Text(exchangeText)
            
            //right currency image
            Image(imageName2)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(exchangeText: "One gold piece = 4 gold pennies", imageName1: .goldpiece, imageName2: .goldpenny)
}
