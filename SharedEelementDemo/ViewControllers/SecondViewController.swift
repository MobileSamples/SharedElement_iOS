//
//  SecondViewController.swift
//  SharedEelementDemo
//
//  Created by Nishee S on 30/11/21.
//

import UIKit

class SecondViewController: BaseViewController {
    
    var data: CellData!

    @IBOutlet private(set) var locationImageView: UIImageView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var DiscriptionLabel: UILabel!
    @IBOutlet private(set) var closeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let cross = #imageLiteral(resourceName: "cross").withRenderingMode(.alwaysTemplate)
        closeButton.setImage(cross, for: .normal)
        closeButton.tintColor = .white
        locationImageView.layer.cornerRadius = 10
        locationImageView.image = data.image
        locationLabel.text = data.title
        DiscriptionLabel.text = data.description
        setStatusBar()
    }

    @IBAction func close(_ sender: Any) {
        dismiss(animated: true)
    }
}
