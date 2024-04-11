//
//  IntrestpillView.swift
//  D_app
//
//  Created by Neosao Services on 11/04/24.
//

import SwiftUI

struct IntrestpillView: View {
    var iconName: String? = "heart.fill"
    var emoji:String? = "👿"
    var text : String = "Graduate Ddegree"
    var body: some View {
        HStack(spacing:4){
            if let iconName {
                Image(systemName: iconName)
            }else if let emoji {
                Text(emoji)
            }
            Text(text)
        }
        .font(.callout)
        .fontWeight(.medium)
        .padding(.horizontal,12)
        .padding(.vertical,6)
        .foregroundStyle(.black)
        .background(.yellow)
        .cornerRadius(32)
    }
}

#Preview {
    IntrestpillView()
}
