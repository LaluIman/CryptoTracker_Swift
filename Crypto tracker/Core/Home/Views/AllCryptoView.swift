//
//  AllCryptoView.swift
//  Crypto tracker
//
//  Created by Lalu Iman Abdullah on 05/04/24.
//

import SwiftUI

struct AllCryptoView: View {
    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack(alignment: .leading){
            Text("All Currency")
                .font(.headline)
                .padding()
            HStack{
                Text("Currency")
                Spacer()
                Text("Price")
            }
            .font(.subheadline)
            .foregroundColor(.gray)
            .padding(.horizontal)
            ScrollView{
                VStack{
                    ForEach(viewModel.coins){ coin in
                        CryptoRowView(coin: coin)
                    }
                }
            }
        }
    }
}
//
//#Preview {
//    AllCryptoView()
//}
