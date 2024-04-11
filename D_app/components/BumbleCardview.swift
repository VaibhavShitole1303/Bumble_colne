//
//  BumbleCardview.swift
//  D_app
//
//  Created by Neosao Services on 11/04/24.
//

import SwiftUI


struct BumbleCardview: View {
    var user: User = .mock
   
    var body: some View {
        ScrollView(.vertical){
            LazyVStack(spacing:0){
                headerCell
                    .frame(height: 600)
                aboutMe
                .padding(.horizontal,24)
                .padding(.vertical,24)
                
                VStack(alignment:.leading){
                    Text("My Basic")
                       
                    HStack(spacing:4){
                        IntrestpillView(emoji: "🎃",text: "demo")
                        IntrestpillView()
                    }
                }.padding(.horizontal,4)
                
                VStack(alignment:.leading){
                    Text("My interests")
                    HStack(spacing:4){
                        IntrestpillView(emoji: "🎃",text: "interests 1")
                        IntrestpillView(text: "interests 12")
                    }
                }
                .padding(.horizontal,4)
                
                ImageLoaderView(urlString:user.image)
                    .padding(24)
                    .frame(height: 600)
                ImageLoaderView(urlString:user.image)
                    .padding(24)
                    .frame(height: 600)
                ImageLoaderView(urlString:user.image)
                    .padding(24)
                    .frame(height: 600)
                
            }
        }
        .scrollIndicators(.hidden)
        .background(.backGroundYellow)
        .cornerRadius(32)
        
    }
    
    private func sectionTitle(title:String) -> some View{
        Text(title)
            .font(.body)
            .foregroundStyle(.gray)
    }
    
    private var headerCell:some View{
        ZStack(alignment:.bottomLeading){
        
            ImageLoaderView(urlString:user.image)
            VStack(alignment:.leading,spacing:8){
                Text("\(user.firstName) , \(user.age)")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                HStack(spacing:4){
                    Image(systemName: "suitcase")
                    Text("\(user.work)")
                }
                HStack(spacing:4){
                    Image(systemName: "graduationcap")
                    Text("\(user.educationL)")
                }
                BumbleHeartView()
                    .onTapGesture {
                        
                    }
            }
            .padding(24)
            .font(.callout)
            .fontWeight(.medium)
            .frame(maxWidth: .infinity,alignment: .leading)
            .foregroundStyle(.white)
            .background(
                LinearGradient(
                    colors: [
                        .black.opacity(0),
                        .black.opacity(0.6),
                        .black.opacity(0.6),
                        
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            
        }

    }
    
    private var aboutMe: some View{
        VStack(alignment:.leading,spacing:12){
            sectionTitle(title: "About me")
            Text("\(user.aboutME)")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
            
            HStack(spacing:0){
                BumbleHeartView()
                Text("Send a Compliment")
                    .font(.caption)
                    .fontWeight(.semibold)
            }
            .padding([.horizontal,.trailing],8)
            .background(.yellow)
            .cornerRadius(32)
            
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
}

#Preview {
    BumbleCardview()
        .padding(.vertical,40)
        .padding(.horizontal,16)
}
