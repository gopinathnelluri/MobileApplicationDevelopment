//
//  ViewController.swift
//  showMap
//
//  Created by  on 4/18/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    
    @IBOutlet var longitude: UITextField!
    
    
    @IBOutlet var latitude: UITextField!
    
    
    var annotation: MKPointAnnotation!
    
    
    func addAnnotation(_ newCoordinate: CLLocationCoordinate2D,title: String, subtitle: String){
        annotation = MKPointAnnotation()
        annotation.coordinate = newCoordinate
        annotation.title = title
        annotation.subtitle = subtitle
        mapView.addAnnotation(annotation)
    }
    
    
    
    @IBAction func showMap(_ sender: UIButton) {
        
        let lat = Double(latitude.text!)!
        let lng = Double(longitude.text!)!
        let coordianate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat,lng)
        
        addAnnotation(coordianate, title: "Statue of Liberty",subtitle:"Liberty Island New York")
        
        
        let lat2 = Double(latitude.text!)! + 0.0005
        let lng2 = Double(longitude.text!)! + 0.0005
        let coordianate2: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat2,lng2)

        
        addAnnotation(coordianate2, title: "Next to Statue of Liberty",subtitle:"Liberty Island New York")
        
        let lat3 = 29.7630556
        let lng3 = -95.3630556
        let coordianate3: CLLocationCoordinate2D = CLLocationCoordinate2DMake(lat3,lng3)

        addAnnotation(coordianate3, title: "Houston",subtitle:"Houston, Tx")
        
        
        let region = MKCoordinateRegionMakeWithDistance(coordianate, 500, 500)
        mapView.region = region
        
    }
    
    
    
    
    @IBAction func mapType(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex{
        case 1: mapView.mapType = MKMapType.satellite
        case 0: mapView.mapType = MKMapType.standard
        default: mapView.mapType = MKMapType.hybrid
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        latitude.text! = "40.6892"
        longitude.text! = "-74.0444"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

