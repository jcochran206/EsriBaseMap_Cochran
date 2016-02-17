//
//  ViewController.swift
//  EsriBaseMap
//
//  Created by Jonathan Cochran on 2/16/16.
//  Copyright © 2016 Jonathan Cochran. All rights reserved.
//

import UIKit

import ArcGIS

class ViewController: UIViewController, AGSMapViewLayerDelegate {

    @IBOutlet weak var mapView: AGSMapView! //map view
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Add a basemap tiled layer
        let url = NSURL(string: "http://services.arcgisonline.com/arcgis/rest/services/Canvas/World_Dark_Gray_Base/MapServer")
        let tiledLayer = AGSTiledMapServiceLayer(URL: url)
        self.mapView.addMapLayer(tiledLayer, withName: "Basemap Tiled Layer")
        
        
        self.mapView.layerDelegate = self
    }
    
    //3. Implement the layer delegate method
    func mapViewDidLoad(mapView: AGSMapView!) {
        //do something now that the map is loaded
        //for example, show the current location on the map
        mapView.locationDisplay.startDataSource() // this displays user location 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

