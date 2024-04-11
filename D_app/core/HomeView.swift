//
//  HomeView.swift
//  D_app
//
//  Created by Neosao Services on 11/04/24.
//

import SwiftUI

struct HomeView: View {
    @State private  var filters:[String] = ["Everyone", "Trending"]
    @AppStorage("bumble_home_filter") private var selectedFilter : String = "Everyone"
    //we  change @state property to  @AppStorage so that app will store which tab last time user choose so that next time that will selecte defaluts
    var body: some View {
        ZStack{
            Color.white.ignoresSafeArea()
            VStack(spacing:8){
                header
                BumbleFilterView(options: filters, selection: $selectedFilter)
                    .background(
                        Divider(),alignment: .bottom)
                BumbleCardview()
               
            }
            .padding(8)
        }
    }
    private var header:some View{
        HStack(spacing:0){
            HStack(spacing:0){
                Image(systemName: "line.horizontal.3")
                    .padding(8)
                    .background(Color.blue.opacity(0.001))
                    .onTapGesture {
                        
                    }
                
                Image(systemName: "arrow.uturn.left")
                    .padding(8)
                    .background(Color.blue.opacity(0.001))
                    .onTapGesture {
                        
                    }
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            Text("bumble")
                .font(.title)
                .foregroundStyle(.yellow)
                .frame(maxWidth: .infinity,alignment: .center)
            Image(systemName: "slider.horizontal.3")
                .padding(8)
                .background(Color.blue.opacity(0.001))
                .onTapGesture {
                    
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
        }
        .font(.title2)
        .fontWeight(.medium)
        .foregroundStyle(.black)
    }
}

#Preview {
    HomeView()
}
