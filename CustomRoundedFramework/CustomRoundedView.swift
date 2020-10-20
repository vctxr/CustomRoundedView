//
//  CustomRoundedView.swift
//  CustomRoundedFramework
//
//  Created by Victor Samuel Cuaca on 20/10/20.
//

import UIKit
import TTGSnackbar

public class CustomRoundedView {
    public static func roundedAllCorner(view: UIView, radius: CGFloat) {
        view.layer.cornerRadius = radius
        view.layer.masksToBounds = true
    }
    
    public static func roundedTopRightTopLeft(view: UIView, radius: CGFloat) {
        view.clipsToBounds = true
        view.layer.cornerRadius = radius
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner] // Top right corner, Top left corner respectively
    }
    
    public static func roundedBottomRightBottomLeft(view: UIView, radius: CGFloat) {
        view.clipsToBounds = true
        view.layer.cornerRadius = radius
        view.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner] // Bottom right corner, Bottom left corner respectively
    }
    
    /// Displays a snackbar with the specified message
    public static func showDisplayMessage(message: String) {
        let display = TTGSnackbar(message: message, duration: .long)
        display.show()
    }
}
