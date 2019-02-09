//
//  FinalViewController.swift
//  Kanchi Kamakoti Peedam
//
//  Created by S VISHNU DARSHAN on 14/01/19.
//  Copyright © 2019 S VISHNU DARSHAN. All rights reserved.
//

import UIKit
import MapKit
var lat = [12.8410,12.8473,12.8390,12.8415,12.6153,12.8423,12.8433,12.8381,12.8418,12.8427,12.8372]
var long = [79.7034,79.6996,79.7050,79.7019,79.7583,79.6897,79.7007,70.7009,79.7022,79.6970,70.7047]


class FinalViewController: UIViewController {

    @IBOutlet weak var templeName: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageDesc: UILabel!
    
    @IBAction func showMeWhere(_ sender: Any) {
        
        let latitude:CLLocationDegrees = lat[myIndex]
        let longitude:CLLocationDegrees = long[myIndex]
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2D(latitude: latitude,longitude: longitude)
        let regionSpan = MKCoordinateRegion(center: coordinates,latitudinalMeters: regionDistance,longitudinalMeters: regionDistance)
        
        let options = [MKLaunchOptionsMapCenterKey : NSValue(mkCoordinate: regionSpan.center),MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan:regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = temples[myIndex]
        mapItem.openInMaps(launchOptions: options)
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        templeName.text = temples[myIndex]
        imageDesc.text = tempDesc[myIndex]
        imageView.image = UIImage(named: temples[myIndex]+".jpg")
        
        
    }
    
    
    
    

}
