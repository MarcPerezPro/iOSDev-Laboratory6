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
    @IBAction func onGoToTapped(_ sender: UIButton) {
    }
    
    @IBOutlet weak var destinationLatitudeInput: UITextField!
    @IBOutlet weak var destinationLongitudeInput: UITextField!
    @IBAction func onGetRouteTapped(_ sender: UIButton) {
    }
    
    @IBOutlet weak var transportTypePicker: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

//    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
//
//        let geocoder = CLGeocoder()
//        geocoder.geocodeAddressString(searchBarMap.text!) { (placemarks:[CLPlacemark]?, error:Error?) in
//            if error == nil {
//
//                let placemark = placemarks?.first
//
//                let anno = MKPointAnnotation()
//                anno.coordinate = (placemark?.location?.coordinate)!
//                anno.title = self.searchBarMap.text!
//
//                let span = MKCoordinateSpanMake(0.075, 0.075)
//                let region = MKCoordinateRegion(center: anno.coordinate, span: span)
//
//                self.mapView.setRegion(region, animated: true)
//                self.mapView.addAnnotation(anno)
//                self.mapView.selectAnnotation(anno, animated: true)
//
//
//
//            }else{
//                print(error?.localizedDescription ?? "error")
//            }
//        }
//    }
    
}

