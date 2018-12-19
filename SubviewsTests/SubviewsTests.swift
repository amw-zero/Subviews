//
//  ViewTreeTests.swift
//  ViewTreeTests
//
//  Created by Alex on 12/18/18.
//  Copyright © 2018 Alex. All rights reserved.
//

import XCTest
@testable import Subviews

class SubviewsTests: XCTestCase {
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
    func testAddingArrangedSubviewsToStackView() {
        let stackView = UIStackView()
        let subview = UIView()
        stackView.arrangedSubviews {[
            subview
        ]}
        XCTAssertEqual(stackView.arrangedSubviews, [subview])
    }
    func testNestedAndArrangedSubviews() {
        let view = UIView()
        let subview1 = UIView()
        let subview2 = UIView()
        let stackView = UIStackView()
        let stackViewSubview1 = UIView()
        let stackViewSubview2 = UIView()
        view.subviews {[
            subview1,
            stackView.arrangedSubviews {[
                stackViewSubview1,
                stackViewSubview2
            ]},
            subview2
        ]}
        XCTAssertEqual(view.subviews, [subview1, stackView, subview2])
        XCTAssertEqual(stackView.arrangedSubviews, [stackViewSubview1, stackViewSubview2])
    }
}
