//
//  AddSubviews.swift
//  MyHabits
//
//  Created by Pavel Belov on 16.08.2021.
//

import UIKit

extension UIView {
    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { addSubview($0) }
    }
}

