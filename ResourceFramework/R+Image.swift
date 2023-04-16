//
//  R+Image.swift
//  ResourceFramework
//
//  Created by hyunndy on 2023/04/17.
//

import UIKit

public extension R.Image {
    static var ic_info_16_ver01: UIImage { .load(name: "ic_info_16_ver01") }
}

extension UIImage {
    static func load(name: String) -> UIImage {
        guard let image = UIImage(named: name, in: R.bundle, with: nil) else {
            assert(false, "\(name) 이미지 로드 실패")
            return UIImage()
        }
        
        return image
    }
}

