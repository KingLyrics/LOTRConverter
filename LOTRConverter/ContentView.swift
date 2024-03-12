//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Ekomobong Edeme on 11/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showExchangeInfo:Bool = false
    @State private var showExchangeCurrency:Bool = false
    @State private var leftAmount:String = ""
    @State private var rightAmount:String = ""
    
    @State var leftCurrency:Currency = .silverPiece
    @State var rightCurrency:Currency = .goldPiece
    
    var body: some View {
        ZStack{
            // Background Image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                //Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency exchange text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //Conversion section
                HStack{
                    //Left conversion
                    VStack{
                        //Currency image
                        HStack {
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height:33)
                            
                            
                            
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showExchangeCurrency.toggle()
                            
                        }
                        
                        //Text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                        
                    }
                    
                    //equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    
                    //right conversion section
                    VStack{
                        //Currency text
                        HStack{
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                            //Currency image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showExchangeCurrency.toggle()
                        }
                        
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                        
                    }
                    
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                .sheet(isPresented: $showExchangeCurrency, content: {
                    SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
                })
                
                Spacer()
                
                //info section
                HStack {
                    Spacer()
                    
                    Button(action: {
                        showExchangeInfo.toggle()
                    }, label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .padding(.trailing)
                        
                            .sheet(isPresented: $showExchangeInfo, content: {
                                ExchangeInfo()
                            })
                        
                    })
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
