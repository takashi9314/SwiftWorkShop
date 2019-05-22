//
//  ImagesViewController.swift
//  SwiftWorkShop
//
//  Created by 松本隆 on 2019/05/12.
//  Copyright © 2019 mimpro. All rights reserved.
//

import UIKit


class ImagesViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    let itemNumber = 50
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.register(UINib.init(nibName: ImageCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: ImageCollectionViewCell.identifier)
    }
}

extension ImagesViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return itemNumber
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCollectionViewCell.identifier, for: indexPath) as? ImageCollectionViewCell else { return UICollectionViewCell() }
        cell.imageURL = URL(string: "https://placeimg.com/640/480/any")
        return cell
    }
}
