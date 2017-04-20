//
//  DetailViewController.swift
//  mdaApp
//
//  Created by  on 4/20/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    @IBOutlet weak var mapView: MKMapView!
    
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.first! + " " + detail.last!
                var geocoder = CLGeocoder()
                geocoder.geocodeAddressString(detail.address!, completionHandler: { (placemarks: [CLPlacemark]?, error: Error?) in
                    if placemarks != nil && placemarks!.count > 0 {
                        let topResult = placemarks![0] //as CLPlacemark
                        let placemark = MKPlacemark(placemark: topResult)
                        let region  = MKCoordinateRegionMakeWithDistance(placemark.coordinate, 5000, 5000)
                        self.mapView.setRegion(region, animated: true)
                        self.mapView.addAnnotation(placemark)
                    }
                })
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Contact? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }


}

