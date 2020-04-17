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

