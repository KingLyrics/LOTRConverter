//
//  CurrencyIcon.swift
//  LOTRConverter
//
//  Created by Ekomobong Edeme on 12/03/2024.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let currenyImage:ImageResource
    let currencyName:String
    
    var body: some View {
        ZStack(alignment:.bottom){
            Image(currenyImage)
                .resizable()
                .scaledToFit()
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth:.infinity)
                .background(.brown.opacity(0.75))
        }
        .padding(3)
        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currenyImage: .goldpenny, currencyName: "Gold Penny")
}
