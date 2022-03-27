//
//  SImpleViewControllerTest.swift
//  DynamicTypePresentationStartTests
//
//  Created by Lidiomar Machado on 27/03/22.
//

import XCTest
@testable import DynamicTypePresentationStart

// FONT SIZES
//    extraSmall
//    small
//    medium
//    large
//    extraLarge
//    extraExtraLarge
//    extraExtraExtraLarge

// ACCESSIBILITY SIZES
//    accessibilityMedium
//    accessibilityLarge
//    accessibilityExtraLarge
//    accessibilityExtraExtraLarge
//    accessibilityExtraExtraExtraLarge

class SimpleViewControllerTests: XCTestCase {

    func test_dynamicType() {
        let sut = makeSUT()
        
        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraSmall)),
               named: "SimpleViewController/1-extraSmall")

        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraLarge)),
               named: "SimpleViewController/2-extraLarge")

        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraExtraExtraLarge)),
               named: "SimpleViewController/3-extraExtraExtraLarge")

        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityMedium)),
               named: "SimpleViewController/4-accessibilityMedium")

        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityExtraLarge)),
               named: "SimpleViewController/5-accessibilityExtraLarge")

        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityExtraExtraExtraLarge)),
               named: "SimpleViewController/6-accessibilityExtraExtraExtraLarge")
        
//        assert(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraSmall)),
//               named: "SimpleViewController/1-extraSmall")
//
//        assert(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraLarge)),
//               named: "SimpleViewController/2-extraLarge")
//
//        assert(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraExtraExtraLarge)),
//               named: "SimpleViewController/3-extraExtraExtraLarge")
//
//        assert(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityMedium)),
//               named: "SimpleViewController/4-accessibilityMedium")
//
//        assert(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityExtraLarge)),
//               named: "SimpleViewController/5-accessibilityExtraLarge")
//
//        assert(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityExtraExtraExtraLarge)),
//               named: "SimpleViewController/6-accessibilityExtraExtraExtraLarge")
    }
    
    
    private func makeSUT() -> SimpleViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "SimpleViewController") as? SimpleViewController
        
        return controller!
    }

}
