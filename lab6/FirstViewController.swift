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
        let url = URL(string: "https://picsum.photos/400/300")
        imageFromInternet.load(url: url!)
    }

    
    @IBOutlet weak var imageFromGallery: UIImageView!
    @IBAction func loadImageFromGalleryButton(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        self.present(imagePickerController, animated: true, completion: nil)
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

/// Stolen from:
/// https://stackoverflow.com/questions/20595227/how-do-i-get-an-image-from-the-ios-photo-library-and-display-it-in-uiwebview
extension FirstViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController,
    didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.imageFromGallery.image = image
        picker.dismiss(animated: true, completion: nil)
    }
}
