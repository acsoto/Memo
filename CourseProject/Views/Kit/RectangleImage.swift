//
//  RectangleImage.swift
//  Memo
//
//  Created by 周子航 on 2021/10/26.
//

import SwiftUI

struct RectangleImage: View {
    @ObservedObject var imageLoader: ImageLoader
    @State var image: UIImage = UIImage()

    init(withURL url: String) {
        imageLoader = ImageLoader(urlString: url)
    }

    var body: some View {
        VStack {
            Image(uiImage: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 300)
                    .clipped(antialiased: true)
        }.onReceive(imageLoader.didChange) { data in
            self.image = UIImage(data: data) ?? UIImage()
        }
    }
}


struct SSS_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geo in
            Image("Valcano")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geo.size.width)
        }

    }
}
