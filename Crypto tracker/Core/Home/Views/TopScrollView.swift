//
//  TopScrollView.swift
//  Crypto tracker
//
//  Created by Lalu Iman Abdullah on 05/04/24.
//

import SwiftUI

struct TopScrollView: View {
    @StateObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Top Scroll")
                .font(.headline)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 12){
                    ForEach(viewModel.coins){ coin in
                        TopScrollItemViews(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

//#Preview {
//    TopScrollView()
//}
