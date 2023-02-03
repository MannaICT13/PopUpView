//
//  ViewController.swift
//  PopUpView
//
//  Created by Md Khaled Hasan Manna on 3/2/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showPopup(_ sender: UIButton) {
        showAlertPopupView()
    }
    
    private weak var alerView: UIView?
    
    private func showAlertPopupView() {
        let popupView = PopupView.instantiate()
        alerView = popupView
        
        popupView.callback.didConfirm = {[weak self] in
            self?.alerView?.removeFromSuperview()
            self?.navigationItem.setHidesBackButton(false, animated: false)
        }
        
        popupView.callback.didClose = {[weak self] in
            self?.alerView?.removeFromSuperview()
            self?.navigationItem.setHidesBackButton(false, animated: false)
        }
        
        popupView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(popupView)
        let constraints = [
            popupView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            popupView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            popupView.bottomAnchor .constraint(equalTo: view.bottomAnchor),
            popupView.topAnchor.constraint(equalTo: view.topAnchor)
        ]
        navigationItem.setHidesBackButton(true, animated: false)
        NSLayoutConstraint.activate(constraints)
    }
}

