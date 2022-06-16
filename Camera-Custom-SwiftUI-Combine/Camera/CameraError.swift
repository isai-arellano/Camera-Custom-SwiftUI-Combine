//
//  CameraError.swift
//  Camera-Custom-SwiftUI-Combine
//
//  Created by Isaí on 16/06/22.
//

import Foundation

enum CameraError: Error {
    case cameraUnavailable
    case cannotAddInput
    case cannotAddOutput
    case createCaptureInput(Error)
    case deniedAuthorization
    case restrictedAuthorization
    case unknownAuthorization
}

extension CameraError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .cameraUnavailable:
            return "Camera unavailable"
        case .cannotAddInput:
            return "Cannot add capture input to session"
        case .cannotAddOutput:
            return "Cannot add video output to session"
        case .createCaptureInput(let error):
            return "Creating capture input for camera: \(error.localizedDescription)"
        case .deniedAuthorization:
            return "Camera ccess denied"
        case .restrictedAuthorization:
            return "Atteping to access a restricted capture device"
        case .unknownAuthorization:
            return "Uknown authorization status for capture device"
        }
    }
}
