//
//  HomeView.swift
//  Crypto tracker
//
//  Created by Lalu Iman Abdullah on 05/04/24.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                //top
                TopScrollView(viewModel: viewModel)
                
                Divider()
                //all view
                AllCryptoView(viewModel: viewModel)
            }
            .navigationTitle("Live Crypto")
        }
    }
}

#Preview {
    HomeView()
        .preferredColorScheme(.dark)
}
