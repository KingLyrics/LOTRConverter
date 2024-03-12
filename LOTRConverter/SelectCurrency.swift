//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Ekomobong Edeme on 12/03/2024.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
    @State var selectedCurrency:Currency
    
    
    var body: some View {
        ZStack{
            //Background Image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                //Text
                Text("Select the currency you are starting with:")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                
                //Currency Icons
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
                
                //Text
                Text("Select the currency you would like to convert to:")
                
                //Currecny icons
                
                
                //Done button
                
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .multilineTextAlignment(.center)
        }
        
    }
}

#Preview {
    SelectCurrency( selectedCurrency: .silverPiece)
}
