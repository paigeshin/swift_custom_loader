//
//  CustomLoader.swift
//  SwiftCustomLoadingIndicator
//
//  Created by shin seunghyun on 2020/04/21.
//  Copyright © 2020 shin seunghyun. All rights reserved.
//

import UIKit

class CustomLoader: UIView {
    
    static let instance: CustomLoader = CustomLoader()
    
    var newBackgroundColor: UIColor = .black
    var newAlpha: CGFloat = 0.5
    var gifName: String = ""
    
    lazy var transparentView: UIView = {
        let transparentView: UIView = UIView(frame: UIScreen.main.bounds)
        transparentView.backgroundColor = newBackgroundColor.withAlphaComponent(newAlpha)
        transparentView.isUserInteractionEnabled = false
        return transparentView
    }()
    
    lazy var gifImage: UIImageView = {
        let gifImage: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
        gifImage.contentMode = .scaleAspectFit
        gifImage.center = transparentView.center
        gifImage.isUserInteractionEnabled = false
        gifImage.loadGif(name: gifName)
        return gifImage
    }()
    
    func showLoader() {
        self.addSubview(transparentView)
        self.transparentView.addSubview(gifImage)
        self.transparentView.bringSubviewToFront(self.gifImage)
        UIApplication.shared.windows.first{$0.isKeyWindow}?.addSubview(transparentView)
    }
    
    func hideLoader() {
        self.transparentView.removeFromSuperview()
    }
    
    
}
