//
// Created by Scott Moon on 2019-05-02.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import Foundation

import RxSwift

public struct LoggerInterceptorURLRequest {

	// MARK: - Private

	private let logger: Logger

	// MARK: - Initializing

	public init(logger: Logger) {
		self.logger = logger
	}
}

extension LoggerInterceptorURLRequest: Interceptor {

	// MARK: - Protocol functions
	public func intercept(chain: InterceptorChain<URLRequest>) -> Observable<URLRequest> {
		if let input = chain.input {
			logger.log(level: .info, message: "Sending request: \n" + String(describing: input) + "\n")
		}
		return  chain.proceed()
	}
}
