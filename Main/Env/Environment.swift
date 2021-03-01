//
//  Environment.swift
//  Main
//
//  Created by Gustavo Tiecker on 01/03/21.
//  Copyright © 2021 Gustavo Tiecker. All rights reserved.
//

import Foundation

public final class Environment {
    
    public enum EnvironmentVariables: String {
        case apiBaseUrl = "API_BASE_URL"
    }
    
    public static func variable(_ key: EnvironmentVariables) -> String {
        return Bundle.main.infoDictionary![key.rawValue] as! String
    }
}
