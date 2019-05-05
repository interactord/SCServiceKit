//
// Created by Scott Moon on 2019-05-03.
// Copyright (c) 2019 Scott Moon. All rights reserved.
//

import XCTest
import UIKit

@testable import SCServiceKit

class UIApplicationNetworkActivitySpec: XCTestCase {

  var sut: UIApplicationNetworkActivity?

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
    sut = nil
  }

  func test_should_be_NetworkActivityIndicatorVisible() {

    let expectedCounter = 2

    sut = UIApplicationNetworkActivity(application: UIApplication.shared)

    guard let sut = sut else {
      fatalError("Should be not nil")
    }

    sut.hide()
    sut.hide()
    sut.show()
    sut.show()
    sut.hide()
    sut.show()

    XCTAssertEqual(expectedCounter, sut.counter)
  }

  func test_should_be_NetworkActivityIndicatorVisible_count_is_zero() {

    let expectedCounter = 0

    sut = UIApplicationNetworkActivity(application: UIApplication.shared)

    guard let sut = sut else {
      fatalError("Should be not nil")
    }

    sut.show()
    sut.show()
    sut.show()
    sut.hide()
    sut.hide()
    sut.hide()

    XCTAssertEqual(expectedCounter, sut.counter)
  }
}
