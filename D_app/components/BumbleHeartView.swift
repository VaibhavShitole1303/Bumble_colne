//
//  BumbleHeartView.swift
//  D_app
//
//  Created by Neosao Services on 11/04/24.
//

import SwiftUI

struct BumbleHeartView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(.yellow)
                .frame(width: 40,height: 40)
            Image(systemName: "bubble.fill")
                .foregroundStyle(.black)
                .font(.system(size: 22))
                .offset(y:2)
            Image(systemName: "heart.fill")
                .foregroundStyle(.yellow)
                .font(.system(size: 10))
        }
    }
}

#Preview {
    BumbleHeartView()
}
