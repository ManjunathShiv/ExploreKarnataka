//
//  WebServiceManager.swift
//  KarnatakaTourism
//
//  Created by Manjunath Shivakumara on 27/01/21.
//  Copyright © 2021 Manjunath Shivakumara. All rights reserved.
//

import Foundation
import Combine

enum WebServiceAPIError: LocalizedError {
    case requestNotFormed
    
    var errorDescription: String? {
        switch self {
        case .requestNotFormed: return "Unable to form the request."
        }
    }
}

struct WebServiceConstants {
    static let baseURL = "https://maps.googleapis.com/maps/api/place"
    static let placesAPI = "/nearbysearch/json?"
    static let imageAPI = "/photo?"
}

class WebServiceManager: NSObject {
    
    static let sharedService = WebServiceManager()
        
    enum HTTPMethodType: String {
        case POST = "POST"
        case GET = "GET"
    }
    
    func requestAPI<T: Decodable>(url: String, parameter: [String: AnyObject]? = nil, httpMethodType: HTTPMethodType = .GET) -> T {

        var request = URLRequest(url: URL(string: url) ?? URL(fileURLWithPath: url))
        request.httpMethod = httpMethodType.rawValue
        
        if let requestBodyParams = parameter {
            do {
                request.httpBody = try JSONSerialization.data(withJSONObject: requestBodyParams, options: .prettyPrinted)
            } catch {
                print("Error")
            }
        }
    }
}
