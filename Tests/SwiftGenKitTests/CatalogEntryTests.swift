//
//  CatalogEntryTests.swift
//  Tests
//
//  Created by Francisco Diaz on 10/5/17.
//  Copyright © 2017 SwiftGen. All rights reserved.
//

import XCTest
@testable import SwiftGenKit

final class CatalogEntryTests: XCTestCase {
  func testGroupEntry_IsComparableAlphabetically() {
    let entryA = Catalog.Entry.group(name: "A", items: [])
    let entryB = Catalog.Entry.group(name: "B", items: [])

    XCTAssertEqual(entryA < entryB, true)
  }

  func testColorEntry_IsComparableAlphabetically() {
    let entryA = Catalog.Entry.color(name: "A", value: "")
    let entryB = Catalog.Entry.color(name: "B", value: "")

    XCTAssertEqual(entryA < entryB, true)
  }

  func testImageEntry_IsComparableAlphabetically() {
    let entryA = Catalog.Entry.image(name: "A", value: "")
    let entryB = Catalog.Entry.image(name: "B", value: "")

    XCTAssertEqual(entryA < entryB, true)
  }
}
