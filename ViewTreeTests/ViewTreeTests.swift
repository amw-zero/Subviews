//
//  ViewTreeTests.swift
//  ViewTreeTests
//
//  Created by Alex on 12/18/18.
//  Copyright © 2018 Alex. All rights reserved.
//

import XCTest
@testable import ViewTree

class ViewTreeTests: XCTestCase {
    func testAddingOneSubview() {
        let view = UIView()
        let subview = UIView()
        view.subviews {[
            subview
        ]}
        XCTAssertEqual(view.subviews, [subview])
    }
    func testAddingNestedSubviews() {
        let view = UIView()
        let subview = UIView()
        let nestedSubview = UIView()
        view.subviews {[
            subview.subviews {[
                nestedSubview
            ]}
        ]}
        XCTAssertEqual(view.subviews, [subview])
        XCTAssertEqual(subview.subviews, [nestedSubview])
    }
}
