//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Ekomobong Edeme on 12/03/2024.
//

import SwiftUI

struct IconGrid: View {
    @State var selectedCurrency:Currency

    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()], content: {
            ForEach(Currency.allCases){ currency in
                if selectedCurrency == currency{
                    CurrencyIcon(currenyImage: currency.image, currencyName: currency.name)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .overlay{
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                }else{
                    CurrencyIcon(currenyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            selectedCurrency =  currency
                        }
                }
            }
            
        })

    }
}

#Preview {
    IconGrid(selectedCurrency: .copperPenny)
}
