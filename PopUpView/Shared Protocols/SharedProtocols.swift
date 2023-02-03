//
//  SharedProtocols.swift
//  PopUpView
//
//  Created by Md Khaled Hasan Manna on 3/2/23.
//

import Foundation
import UIKit

// MARK: - NibBased

/// Provide mixins for easy loading of uiview from nib file
protocol NibBased {
    static var nibName: String { get }
    static func instantiate() -> Self
}

extension NibBased where Self: UIView {
    /// Name of the nib file from which UIView will be instantiated
    /// Must override this property if nib name is different from UIView's name
    static var nibName: String {
        return "\(Self.self)"
    }
    
    /// This method instantiate a uiview from nib file
    /// - Returns: UIView
    static func instantiate() -> Self  {
        let nib = Bundle.main.loadNibNamed(nibName, owner: self, options: nil)
        guard let view = nib?.first as? Self else {
            fatalError("Can't load view \(Self.self) from nib \(nibName)")
        }
        return view
    }
}

