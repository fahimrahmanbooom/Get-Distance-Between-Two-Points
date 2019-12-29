//
//  ViewController.swift
//  Get Distance Between Two Points
//
//  Created by Fahim Rahman on 29/12/19.
//  Copyright © 2019 Fahim Rahman. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var latFromInput: UITextField!
    @IBOutlet weak var lonFromInput: UITextField!
    
    @IBOutlet weak var latToInput: UITextField!
    @IBOutlet weak var lonToInput: UITextField!
    
    
    @IBOutlet weak var distanceOutputLabel: UILabel!
    
    
    var latFrom: String?
    var lonFrom: String?
    
    var latTo: String?
    var lonTo: String?
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        distanceOutputLabel.text = "0.0 KM"
        
    }
    
    
    
    @IBAction func calculateButton(_ sender: UIButton) {
        
        latFrom = latFromInput.text
        let latitudeFrom = (latFrom! as NSString).doubleValue
        
        lonFrom = lonFromInput.text
        let longitudeFrom = (lonFrom! as NSString).doubleValue
        
        latTo = latToInput.text
        let latitudeTo = (latTo! as NSString).doubleValue
        
        lonTo = lonToInput.text
        let longitudeTo = (lonTo! as NSString).doubleValue
        
        
        let coordinateFrom = CLLocation(latitude: latitudeFrom, longitude: longitudeFrom)
        let coordinateTo = CLLocation(latitude: latitudeTo, longitude: longitudeTo)

        let distanceInKiloMeters = coordinateFrom.distance(from: coordinateTo).rounded()
        
        distanceOutputLabel.text = "\(distanceInKiloMeters / 1000) KM"
    }
}
