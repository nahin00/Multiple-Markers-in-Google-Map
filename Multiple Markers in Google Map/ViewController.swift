//
//  ViewController.swift
//  Multiple Markers in Google Map
//
//  Created by Nahin Ahmed Ltd on 2/22/17.
//  Copyright © 2017 Nahin Ahmed. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GMSServices.provideAPIKey("AIzaSyA_PIIUgYpnvf99b7z4Ixxx-sIu8cHRXX4")
        
        let latitude = ["0", "1", "2"]
        let longitude = ["99", "100", "101"]
        
        var marker = [Int : GMSMarker]()
        
        let camera = GMSCameraPosition.camera(withLatitude: 0, longitude: 99, zoom: 6)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        
        for i in 0..<latitude.count {
            
            marker[i] = GMSMarker()
            marker[i]?.position = CLLocationCoordinate2DMake(Double(latitude[i])!, Double(longitude[i])!)
            marker[i]?.snippet = "Latitude: \(latitude[i]) Longitude: \(longitude[i])"
            marker[i]?.map = mapView
            marker[i]?.icon = GMSMarker.markerImage(with: UIColor.purple)
        }
        
        self.view = mapView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

