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

class SimpleViewControllerTest: XCTestCase {

    func test_dynamicType() {
        let sut = makeSUT()
        
        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraSmall)),
               named: "SimpleViewController_extraSmall")
        
        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraLarge)),
               named: "SimpleViewController_extraLarge")
        
        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .extraExtraExtraLarge)),
               named: "SimpleViewController_extraExtraExtraLarge")
        
        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityMedium)),
               named: "SimpleViewController_accessibilityMedium")
        
        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityExtraLarge)),
               named: "SimpleViewController_accessibilityExtraLarge")
        
        record(snapshot: sut.snapshot(for: .iPhone8(contentSizeCategory: .accessibilityExtraExtraExtraLarge)),
               named: "SimpleViewController_accessibilityExtraExtraExtraLarge")
    }
    
    
    private func makeSUT() -> SimpleViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyboard.instantiateViewController(withIdentifier: "SimpleViewController") as? SimpleViewController
        
        return controller!
    }

}
