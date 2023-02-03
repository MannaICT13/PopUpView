//
//  PopupView.swift
//  PopUpView
//
//  Created by Md Khaled Hasan Manna on 3/2/23.
//

import Foundation
import UIKit

class PopupView: UIView {
    @IBOutlet weak var contentView: UIView! {
        didSet {
            contentView.backgroundColor = UIColor.black
            contentView.alpha = 0.3
        }
    }
    
    @IBAction private func confirmButtonAction(_ sender: UIButton) {
    }
    
    @IBAction private func closeButtonAction(_ sender: UIButton) {
    }
}
