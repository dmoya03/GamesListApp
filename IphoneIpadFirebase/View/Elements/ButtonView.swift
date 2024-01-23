//
//  ButtonView.swift
//  IphoneIpadFirebase
//
//  Created by Daniel Moya on 22/1/24.
//

import SwiftUI

struct ButtonView: View {
    @Binding var index: String
    @Binding  var menu: Bool
    var title: String
    var device = UIDevice.current.userInterfaceIdiom
    
    var body: some View {
        Button(action: {
            withAnimation{
                index = title
                if device == .phone {
                    menu.toggle()
                }
            }
        }){
           Text(title)
                .font(.title)
                .fontWeight(index == title ? .bold : .none)
                .foregroundColor(index == title ? Color.white : Color.white.opacity(0.6))
        }
    }
}
