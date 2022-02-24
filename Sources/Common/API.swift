//
//  Api.swift
//  Gemmu
//
//  Created by Akashaka on 15/02/22.
//
import Foundation

public struct API {
  static let baseUrl = "https://api.rawg.io/api/"
  static let apiKey = "989d0c911352450dbb8d51a2e9db86cc"
  static let defaultPageSize = "25"
 public static func buildUrl(
    endpoint: Endpoints.Gets,
    param: String="",
    args: [String: String?] = [:] ) -> URL? {
    var components = URLComponents(string: endpoint.url+param)!
    var  urlArgs=[
      URLQueryItem(name: "key", value: self.apiKey),
      URLQueryItem(name: "page_size", value: self.defaultPageSize)
  ]
    for (argKey, argVal) in args {
      urlArgs.append(URLQueryItem(name: argKey, value: argVal))
    }
    components.queryItems=urlArgs
    return components.url
  }
}

public protocol Endpoint {

 public var url: String { get }

}

public enum Endpoints {
 public enum Gets: Endpoint {
    case games
    public var url: String {
      switch self {
      case .games: return "\(API.baseUrl)games"
      }
    }
  }
}
