//
//  R+Color.swift
//  ResourceFramework
//
//  Created by hyunndy on 2023/04/17.
//

import UIKit

public extension R.Color {
    static var pink60: UIColor { .load(name: "pink60") }
}

extension UIColor {
    static func load(name: String) -> UIColor {
        guard let color = UIColor(named: name, in: R.bundle, compatibleWith: nil) else {
            assert(false, "\(name) 컬러 로드 실패")
            return UIColor.black
        }

        return color
    }
}
