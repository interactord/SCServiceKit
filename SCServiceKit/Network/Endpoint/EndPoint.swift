//
// Created by Scott Moon on 2019-05-01.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import Foundation

public protocol Endpoint {
	var baseURL: String { get }
	var path: String { get }
	var httpMethod: HTTPMethod { get }
	var headers: [String: String]? { get }
	var queryParameters: [String: String]? { get }
	var bodyParameters: [String: Any]? { get }
}

extension Endpoint {

	public var headers: [String: String]? {
		return  nil
	}

	public var bodyParameters: [String: Any]? {
		return nil
	}

}
