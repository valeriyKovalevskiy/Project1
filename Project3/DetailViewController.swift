//
//  DetailViewController.swift
//  Project1
//
//  Created by Valeriy Kovalevskiy on 3/4/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var selectedImage: String?
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        title = selectedImage
        navigationItem.largeTitleDisplayMode = .never // navigation bar title has never been large
        
        if let image = selectedImage {
            imageView.image = UIImage(named: image)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }

    
}
