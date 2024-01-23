//
//  NavBar.swift
//  IphoneIpadFirebase
//
//  Created by Daniel Moya on 22/1/24.
//

import SwiftUI

struct NavBar: View {
    var device = UIDevice.current.userInterfaceIdiom
    @Binding var index: String
    @Binding  var menu: Bool
    
    var body: some View {
        HStack{
            Text("My Games")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .font(.system(size: device == .phone ? 25 : 35))
            Spacer()
            if device == .pad {
                //Menu iPad
                HStack(spacing: 25) {
                    ButtonView(index: $index, menu: $menu, title: "Playstation")
                    ButtonView(index: $index, menu: $menu, title: "Xbox")
                    ButtonView(index: $index, menu: $menu, title: "Nintendo")
                }
            } else {
                //Menu iPhone
                Button(action: {
                    withAnimation{
                        menu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 26))
                        .foregroundColor(.white)
                }
            }
        }
        .padding(.top, 30)
        .padding()
        .background(Color.purple)
    }
}
