//
//  SecondViewController.swift
//  lab6
//
//  Created by Marc PEREZ on 17/4/2020.
//  Copyright © 2020 Marc PEREZ. All rights reserved.
//

import UIKit
import MapKit

class SecondViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var latitudeInput: UITextField!
    @IBOutlet weak var longitudeInput: UITextField!
    
    let ALERT_INVALID_COORDINATES = "You must provide valid coordinates to go!"

    func showAlert(_ message: String) {
        let alertController = UIAlertController(title: "ERROR", message:
            message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func onGoToTapped(_ sender: UIButton) {
        guard let lat = CLLocationDegrees(latitudeInput.text!) else {
            showAlert(ALERT_INVALID_COORDINATES)
            return
        }
        guard let lng = CLLocationDegrees(longitudeInput.text!) else {
            showAlert(ALERT_INVALID_COORDINATES)
            return
        }
        let coordinates = CLLocationCoordinate2D(latitude: lat, longitude: lng)
        if (!CLLocationCoordinate2DIsValid(coordinates)) {
            showAlert(ALERT_INVALID_COORDINATES)
            return
        }
        let span = MKCoordinateSpan(latitudeDelta: 0.075, longitudeDelta: 0.075)
        let region = MKCoordinateRegion(center: coordinates, span: span)

        self.mapView.setRegion(region, animated: true)
    }
    
    @IBOutlet weak var destinationLatitudeInput: UITextField!
    @IBOutlet weak var destinationLongitudeInput: UITextField!
    @IBAction func onGetRouteTapped(_ sender: UIButton) {
    }
    
    @IBOutlet weak var transportTypePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

