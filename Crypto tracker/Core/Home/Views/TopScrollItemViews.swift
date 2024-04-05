//
//  TopScrollItemViews.swift
//  Crypto tracker
//
//  Created by Lalu Iman Abdullah on 05/04/24.
//

import SwiftUI

struct TopScrollItemViews: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading){
            //gambar
            AsyncImage(url: coin.imageUrl) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.orange)
                        } placeholder: {
                            Circle()
                                .frame(width: 32, height: 32)
                                .background(Color(.systemGray5))
                        }
            //info
            HStack(spacing: 2){
                Text("\(coin.symbol.uppercased())")
                    .font(.caption).bold()
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            //presentase
                Text(coin.priceChangePercentage24H.toPercentString())
                    .font(.title2)
                    .foregroundStyle(coin.priceChangePercentage24H > 0 ? .green : .red)
            
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        )
    }
}


