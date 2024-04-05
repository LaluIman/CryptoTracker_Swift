//
//  CryptoRowView.swift
//  Crypto tracker
//
//  Created by Lalu Iman Abdullah on 05/04/24.
//

import SwiftUI

struct CryptoRowView: View {
    let coin: Coin
    
    var body: some View {
        HStack{
            //cap
            Text("\(coin.marketCapRank)")
                .fontWeight(.medium)
                .font(.subheadline)
                .foregroundStyle(.gray)
            //image
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
            VStack(alignment:.leading, spacing: 2){
                Text("\(coin.name)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                Text("\(coin.symbol.uppercased())")
                    .font(.caption)
                    .padding(.leading, 6)
            }
            .padding(.leading, 2)
            
            Spacer()
            //price
            VStack(alignment: .trailing, spacing: 4) {
                            Text(coin.currentPrice.toCurrency())
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .padding(.leading, 4)
                            
                            Text(coin.priceChangePercentage24H.toPercentString())
                                .font(.caption)
                                .padding(.leading, 6)
                                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
                        }
        }
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}

//#Preview {
//    CryptoRowView()
//}
