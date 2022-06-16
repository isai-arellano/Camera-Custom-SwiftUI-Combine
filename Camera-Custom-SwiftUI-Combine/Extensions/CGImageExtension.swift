//
//  CGImageExtension.swift
//  Camera-Custom-SwiftUI-Combine
//
//  Created by Isaí on 16/06/22.
//

import CoreGraphics
import VideoToolbox

extension CGImage {
    static func create(from cvPixelBuffer: CVPixelBuffer?) -> CGImage? {
        guard let pixelBuffer = cvPixelBuffer else {
            return nil
        }
        
        var image: CGImage?
        VTCreateCGImageFromCVPixelBuffer(pixelBuffer, options: nil, imageOut: &image)
        return image
    }
}
