//
//  FrameView.swift
//  Camera-Custom-SwiftUI-Combine
//
//  Created by Isaí on 16/06/22.
//

import SwiftUI

struct FrameView: View {
    var image: CGImage?
    
    private let label = Text("Video feed")
    
    var body: some View {
        
        if let image = image {
            GeometryReader { geometry in
                // .upMirror para camara frontal
                Image(image, scale: 1.0, orientation: .up, label: label)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: geometry.size.width, height: geometry.size.height, alignment: .center
                    )
                    .clipped()
            }
        }else {
             Color.black
            //EmptyView()
        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
