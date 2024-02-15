//
//  fullScreenImageViewController.swift
//  HomeWork-4
//
//  Created by Владислав Соколов on 15.02.2024.
//

import UIKit

class fullScreenImageViewController: UIViewController {
    
    var image: UIImage?
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.image = image
    }
}
