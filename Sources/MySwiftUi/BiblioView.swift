//
//  ContentView.swift
//  MyAppMusic
//
//  Created by etudiant on 11/05/2023.
//

import SwiftUI
import Combine

struct BiblioView: View {
    @State var isClicked: Bool = true    
    @State private var showEpisodes = true
    let description = "Comment faire face au défi climatique ? Tous les mardis, Nabil Wakim et la rédaction du Monde invitent des experts pour comprendre les enjeux et trouver des solutions"
    let maxDescriptionLength = 80
    @State private var showMore = false
    @State private var color: Color = .white
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ScrollView{
                ZStack {
                    color
                        .ignoresSafeArea(edges: .top)
                    VStack {
                        Spacer().frame(height: 50)
                        ///EcouteView
                        Image("poster_5")
                            .resizable()
                            .frame(width: 200 ,height: 200)
                            .aspectRatio(contentMode: .fit)
                        
                            .onReceive(Just(UIImage(named: "poster_5"))) { uiImage in
                                if let averageColor = uiImage?.averageColor {
                                    self.color = Color(averageColor)
                                }
                            }
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 11))
                        Text("Chaleur Humaine")
                            .font(.title2)
                            .multilineTextAlignment(.leading)
                        Text("Le Monde")
                            .font(.subheadline)
                        HStack {
                            Image(systemName: "star.fill")
                                .clipShape(Circle())
                                .overlay {
                                    Circle().stroke(.orange, lineWidth: 4)
                                }
                            Text("SER Podcast")
                                .foregroundColor(Color.black)
                            Image(systemName: "chevron.right")
                        }
                        Button(action: {
                            isClicked.toggle()
                        }) {
                            HStack{
                                Image(systemName: isClicked ? "star.fill" : "pause.fill").foregroundColor(Color.white)
                                Text("Dernier épisode").foregroundColor(Color.white)
                                    .padding(.vertical, 12)
                                    .padding(.horizontal, 45)
                            }
                        }
                        .buttonStyle(.borderedProminent)
                        VStack {
                            Text(showMore ? description : description.prefix(maxDescriptionLength) + "...")
                                .foregroundColor(.white)
                            if description.count > maxDescriptionLength {
                                HStack{
                                    Spacer()
                                    Button(action: {
                                        showMore.toggle()
                                    }, label: {
                                        Text(showMore ? "MOINS" : "PLUS")
                                            .foregroundColor(Color.white)
                                    })
                                }
                                .font(showMore ? .footnote : .body)
                            }
                        }
                        HStack {
                            Image(systemName: "star.fill")
                            Text("4,8 (457)")
                            Spacer()
                            Text("Actualités")
                            Spacer()
                            Text("Chaque semaine")
                        }
                        ScrollView{mystf()}
                        
                    //.padding()
                    .navigationBarTitle("", displayMode: .inline)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarItems(
                        leading: Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "chevron.backward")
                                .foregroundColor(.accentColor)
                                .imageScale(.large)
                        },
                        trailing:
                            HStack(spacing: 16) {
                                Button(action: {
                                    // Action de téléchargement
                                }) {
                                    Image(systemName: "arrow.down.circle")
                                        .foregroundColor(.accentColor)
                                        .imageScale(.large)
                                }
                                
                                Button(action: {
                                    // Actions des options
                                }) {
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.accentColor)
                                        .imageScale(.large)
                                }
                            }
                    )
                }
            }
            }.background(color)
            }.overlay(
                GridContentView()
            ).navigationBarHidden(true)
    }
}


struct BiblioView_Previews: PreviewProvider {
    static var previews: some View {
        BiblioView()
        BiblioView().environment(\.colorScheme,.dark)

    }
}


 

