//
//  District.swift
//  KarnatakaTourism
//
//  Created by Manjunath Shivakumara on 05/11/19.
//  Copyright © 2019 Manjunath Shivakumara. All rights reserved.
//

import Foundation
import CoreLocation

struct District : Identifiable, Codable, Hashable {    
    var id : Int
    var name : String
    var population : Int
    var sexratio: Int
    var literacy: Float
    var populationdensity : Int
    var established : String
    var imagename:String
    fileprivate var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

