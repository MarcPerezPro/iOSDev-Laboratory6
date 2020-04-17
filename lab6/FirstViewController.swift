//
//  FirstViewController.swift
//  lab6
//
//  Created by Marc PEREZ on 17/4/2020.
//  Copyright © 2020 Marc PEREZ. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var imageFromInternet: UIImageView!
    @IBAction func loadImageFromInternetButton(_ sender: UIButton) {
    }

    
    @IBOutlet weak var imageFromGallery: UIImageView!
    @IBAction func loadImageFromGalleryButton(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

/// Stolen from:
/// https://www.hackingwithswift.com/example-code/uikit/how-to-load-a-remote-image-url-into-uiimageview
private extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}

