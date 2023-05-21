//
//  GridContentView.swift
//  MySwiftUi
//
//  Created by etudiant on 17/05/2023.
//

import SwiftUI

struct GridContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            HStack {
                Image("poster_5")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding()
                VStack(alignment: .leading) {
                    Text("Nadie Narlon ...")
                        .font(.title2)
                    Text("29 Avril 2023")
                        .font(.subheadline)
                }
                .padding(.horizontal)
                Spacer()
                Image(systemName: "play.fill")
                                    .font(.system(size: 30))
                                Image(systemName: "goforward.30")
                                    .font(.system(size: 30))
                                    .padding()
            }
            .frame(height: 50)
            .background(ColorPersonnalise.colorWhite)
            .frame(width: 400)
        }
        
    }
}

struct Previews_GridContentView_Previews: PreviewProvider {
    static var previews: some View {
        GridContentView()
    }
}
