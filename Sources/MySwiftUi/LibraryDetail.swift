//
//  LibraryDetail.swift
//  MySwiftUi
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI

struct LibraryDetail: View {
    let library: Library
    
    var body: some View {
        VStack {
            Image(library.thumbnail)
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading, spacing: 10) {
                Text(library.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(library.maj)
                    .font(.headline)
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(library.name), displayMode: .inline)
    }
}
