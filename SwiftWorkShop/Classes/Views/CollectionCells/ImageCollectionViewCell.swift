//
//  ImageCollectionViewCell.swift
//  SwiftWorkShop
//
//  Created by 松本隆 on 2019/05/12.
//  Copyright © 2019 mimpro. All rights reserved.
//

import UIKit
import AlamofireImage

class ImageCollectionViewCell: UICollectionViewCell {
    static let identifier = "ImageCollectionViewCell"
    @IBOutlet weak var imageView: UIImageView!
    var imageURL: URL? {
        didSet {
            setImage()
        }
    }
    
    private func setImage() {
        guard let url = imageURL else { return }
        imageView.af_setImage(withURL: url)
    }
}
