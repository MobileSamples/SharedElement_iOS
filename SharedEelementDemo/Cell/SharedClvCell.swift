//
//  SharedClvCell.swift
//  SharedEelementDemo
//
//  Created by Nishee S on 30/11/21.
//

import UIKit

class SharedClvCell: UICollectionViewCell {
    
    @IBOutlet private(set) var locationImageView: UIImageView!
    @IBOutlet private(set) var locationLabel: UILabel!

    private lazy var setupOnce: Void = {
        contentView.layer.cornerRadius = 12.0
        contentView.layer.masksToBounds = true

        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1.0)
        layer.shadowRadius = 1.0
        layer.shadowOpacity = 0.2
        layer.masksToBounds = false
        layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }()


    override func layoutSubviews() {
        super.layoutSubviews()
        _ = setupOnce
    }

    func configure(with cellData: CellData) {
        locationImageView.image = cellData.image
       // locationLabel.text = cellData.title
    }
}

struct CellData {
    let image: UIImage
    let title: String
    let description: String
}
