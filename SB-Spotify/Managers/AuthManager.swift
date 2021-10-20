//
//  AuthManager.swift
//  SB-Spotify
//
//  Created by Danh Tu on 19/10/2021.
//

import Foundation

final class AuthManager {
    static let shared = AuthManager()
    
    struct Constants {
        static let clientID = "b28d2f9094df49e4af789c8c971a4ff1"
        static let clientSecret = "c233d5feaeb049ed9e358005929e9abd"
    }
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: Date? {
        return nil
    }
    
    private var shouldRefreshToken: Bool {
        return false
    }
}
