//
//  EcouteView.swift
//  MySwiftUi
//
//  Created by etudiant on 11/05/2023.
//


import SwiftUI
import Combine

struct EcouteView: View {
    @State private var color: Color = .white
    @State private var showBiblioView = false // Ajout d'un état pour afficher la page BiblioView

    var body: some View {
        ZStack {
            color
            VStack {
                Button(action: {
                    showBiblioView = true // Afficher la page BiblioView lors du clic sur l'image
                }) {
                    Image("artist_1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 200)
                        .onReceive(Just(UIImage(named: "artist_1"))) { uiImage in
                            if let averageColor = uiImage?.averageColor {
                                self.color = Color(averageColor)
                            }
                        }
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .overlay(RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray, lineWidth: 2))
                }
                .buttonStyle(PlainButtonStyle()) // Utiliser un style de bouton simple pour masquer l'apparence du bouton
                
                Spacer()
            }
            .padding(EdgeInsets.init(top: 32, leading: 12, bottom: 12, trailing: 12))
        }
        .fullScreenCover(isPresented: $showBiblioView) {
            BiblioView() // Afficher la page BiblioView en plein écran lorsque showBiblioView est vrai
        }
    }
}

struct EcouteView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension UIImage {
    var averageColor: UIColor? {
        guard let inputImage = CIImage(image: self) else { return nil }
        let extent = inputImage.extent
        let context = CIContext(options: nil)
        let ciFilter = CIFilter(name: "CIAreaAverage", parameters: [kCIInputImageKey: inputImage, kCIInputExtentKey: CIVector(cgRect: extent)])!
        var bitmap = [UInt8](repeating: 0, count: 4)
        context.render(ciFilter.outputImage!, toBitmap: &bitmap, rowBytes: 4, bounds: CGRect(x: 0, y: 0, width: 1, height: 1), format: .RGBA8, colorSpace: nil)
        return UIColor(red: CGFloat(bitmap[0]) / 255, green: CGFloat(bitmap[1]) / 255, blue: CGFloat(bitmap[2]) / 255, alpha: 1.0)
    }
}
