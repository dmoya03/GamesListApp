//
//  CardView.swift
//  IphoneIpadFirebase
//
//  Created by Daniel Moya on 22/1/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        VStack(spacing: 20){
            Image("nfsmw")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("NFS Most Wanted")
                .font(.title)
                .bold()
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
}

#Preview {
    CardView()
}
