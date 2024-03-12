//
//  SelectCurrency.swift
//  LOTRConverter
//
//  Created by Ekomobong Edeme on 12/03/2024.
//

import SwiftUI

struct SelectCurrency: View {
    
    @Environment(\.dismiss) var dismiss
    
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
                CurrencyIcon(currenyImage: .copperpenny, currencyName: "Copper Penny")
                
                
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
    SelectCurrency()
}
