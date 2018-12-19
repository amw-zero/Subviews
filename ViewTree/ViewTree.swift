//
//  ViewTree.swift
//  ViewTree
//
//  Created by Alex on 12/18/18.
//  Copyright © 2018 Alex. All rights reserved.
//

import UIKit

extension UIView {
    @discardableResult
    func subviews(_ subviewsFunc: () -> [UIView]) -> UIView {
        let subviews = subviewsFunc()
        for subview in subviews {
            addSubview(subview)
        }
        return self
    }
}
