//
//  ApiURL.swift
//  PhotoCollageiOS
//
//  Created by abc on 10/10/22.
//

import Foundation

public var baseUrl = "http://93.188.167.68:8070/api/"

public struct Api {
    public static var Login = baseUrl + "users/login"
    public static var Signup = baseUrl + "users/create"
}

