//
//  ImageLoaderView.swift
//  D_app
//
//  Created by Neosao Services on 11/04/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageLoaderView: View {
    
    var urlString: String = Constants.randoumImage
    var resizaingMode :ContentMode = .fill
    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay(
        WebImage(url: URL(string: urlString))
            .resizable()
            .indicator(.activity)
            .aspectRatio(contentMode: resizaingMode)
            .allowsHitTesting(false)
        )
            .clipped()
    }
}

#Preview {
    ImageLoaderView()
        .cornerRadius(20)
        .padding(40)
        .padding(.vertical,60)
}
