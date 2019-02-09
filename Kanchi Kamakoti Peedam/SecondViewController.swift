//
//  SecondViewController.swift
//  Kanchi Kamakoti Peedam
//
//  Created by S VISHNU DARSHAN on 13/01/19.
//  Copyright © 2019 S VISHNU DARSHAN. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        createAnnotations(locations:annotationLocations)
        zoomlevel(location: locationLatLong)
    }
    
    
   let locationLatLong = CLLocation(latitude: 12.8415, longitude: 79.7019)
    let distanceSpan : CLLocationDistance = 2500
    func zoomlevel(location:CLLocation)
    {
        
        let mapCoordinates = MKCoordinateRegion(center: location.coordinate,latitudinalMeters: distanceSpan,longitudinalMeters: distanceSpan)
        mapView.setRegion(mapCoordinates, animated: true)
    }
    
    let annotationLocations = [
    
        ["title":"Shri Kanchi Kamakoti peetham","latitude":12.8433,"longitude":79.7007],
        ["title":"Ulagalanda Perumal Temple","latitude":12.8390,"longitude":79.7050],
        ["title":"Kumara Kottam Subramanyar","latitude":12.8415,"longitude":79.7019],
        ["title":"Vaikunta Perumal Temple ","latitude":12.6153,"longitude":79.7583],
        ["title":"Kailasanathar Temple","latitude":12.8423,"longitude":79.6897],
        ["title":"Sri Kanchi Kamakshi Ambal Devasthanam","latitude":12.8410,"longitude":79.7034],
        ["title":"Sri Kachabeswarar Temple.","latitude":12.8381,"longitude":79.7009],
        ["title":"Adhi Kamakshi Amman Temple","latitude":12.8418,"longitude":79.7022],
        ["title":"Pandava Dhoota Perumal Temple","latitude":12.8427,"longitude":79.6970],
        ["title":"Ekambareswarar Temple","latitude":12.8473,"longitude":79.6996],
        ["title":"Chitragupta Swamy Temple ","latitude":12.8372,"longitude":79.7047]
    ]
    
    func createAnnotations(locations : [[String: Any]]){
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude : location["latitude"] as! CLLocationDegrees,longitude: location["longitude"]as! CLLocationDegrees)
            mapView.addAnnotation(annotations)
        }

        
    }
    

    
    
    
    
    
    
   
}
