//
//  PopupView.swift
//  PopUpView
//
//  Created by Md Khaled Hasan Manna on 3/2/23.
//

import Foundation
import UIKit

extension PopupView {
    class Callback {
        var didConfirm: () -> Void = { }
        var didClose: () -> Void = { }
    }
}

class PopupView: UIView, NibBased {
    @IBOutlet weak var contentView: UIView! {
        didSet {
            contentView.backgroundColor = UIColor.black
            contentView.alpha = 0.3
        }
    }
    let callback = Callback()
    
    @IBAction private func confirmButtonAction(_ sender: UIButton) {
        callback.didConfirm()
    }
    
    @IBAction private func closeButtonAction(_ sender: UIButton) {
        callback.didClose()
    }
}
