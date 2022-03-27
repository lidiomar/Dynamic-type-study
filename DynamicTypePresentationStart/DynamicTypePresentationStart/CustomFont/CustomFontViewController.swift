//
//  CustomFontViewController.swift
//  DynamicTypePresentation
//
//  Created by Lidiomar Machado on 25/03/22.
//

import UIKit

class CustomFontViewController: UIViewController {
    
    @IBOutlet private weak var labelOption1: UILabel!
    @IBOutlet private weak var labelOption2: UILabel!
    @IBOutlet private weak var customFontTitle: UILabel!
    @IBOutlet private weak var imageHeight: NSLayoutConstraint!
    @IBOutlet private weak var imageWidth: NSLayoutConstraint!
    @IBOutlet private weak var image: UIImageView!
    @IBOutlet private weak var stackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupDynamicTypeForCustomFont()
//        setupImage()
    }
    
//    private func setupDynamicTypeForCustomFont() {
//        let font = UIFont(name: "Chalkduster", size: 23.0) ?? UIFont.systemFont(ofSize: 23.0)
//        customFontTitle.font = UIFontMetrics(forTextStyle: .body).scaledFont(for: font)
//        customFontTitle.adjustsFontForContentSizeCategory = true
//    }

//    private func setupImage() {
//        let metric = UIFontMetrics(forTextStyle: .body).scaledValue(for: 60)
//        imageHeight.constant = metric
//        imageWidth.constant = metric
//    }

//    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
//        //setupImage()
//        let isAccessibilityCategory = traitCollection.preferredContentSizeCategory.isAccessibilityCategory
//        if isAccessibilityCategory {
//            stackView.axis = .vertical
//        } else {
//            stackView.axis = .horizontal
//        }
//    }

}
