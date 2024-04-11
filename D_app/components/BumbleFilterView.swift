//
//  BumbleFilterView.swift
//  D_app
//
//  Created by Neosao Services on 11/04/24.
//

import SwiftUI
//simply this is the tab view
struct BumbleFilterView: View {
    var options : [String] = ["Everyone", "Trending"]
    @Binding  var selection:String
    @Namespace private var nameSpace
    
    
    var body: some View {
        HStack(alignment:.top,spacing: 32){
            ForEach(options,id: \.self){ option in
                VStack(spacing:8){
                    Text(option)
                        .frame(maxWidth: .infinity)
                        .font(.subheadline)
                        .fontWeight(.medium)
                    if(selection == option){
                        RoundedRectangle(cornerRadius: 2)
                            .frame(height: 2)
                            .matchedGeometryEffect(id: "selection", in: nameSpace)
                    }
                    
                }
                .padding(.top,8)
                .background(Color.black.opacity(0.001))
                .foregroundStyle(selection == option ? .black : .gray)
                .onTapGesture {
                    selection = option
                }
            }
            .animation(.smooth,value: selection)
        }
    }
}
fileprivate struct BumbleFilterViewPreview:View {
    var options:[String] = ["Everyone", "Trending"]
    @State private var selection : String = "Everyone"
    var body: some View {
        BumbleFilterView(options: options, selection: $selection)
    }
}
#Preview {
    BumbleFilterViewPreview()
        .padding()
}
