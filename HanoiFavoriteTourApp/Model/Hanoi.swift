//
//  Hanoi.swift
//  Demo_AppleApplication
//
//  Created by Nguyen Van Thanh on 07/08/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Hanoi: Hashable, Codable, Identifiable{
    var id: Int
    var name: String
    var category: String
    var city: String
    var park: String
    var isFavorite: Bool
    private var coordinates: Coordinates
    private var imageName: String
    
    var image: Image {
        Image(imageName)
    }
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
}
