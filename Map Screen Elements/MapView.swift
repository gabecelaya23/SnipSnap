//
//  MapView.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
import MapKit

//This map view displays a UI map view filled with certain coordinates and locations of specific barbers.


struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
           MKMapView()
       }

     func updateUIView(_ uiView: MKMapView, context: Context) {
       let coordinate = CLLocationCoordinate2D(latitude: 34.0640, longitude: -117.1638)
       let span = MKCoordinateSpan(latitudeDelta: 0.035, longitudeDelta: 0.035)
       let region = MKCoordinateRegion(center: coordinate, span: span)
        
        //These annotations create markers on the map to display barbers at set locations. 
       let annotation = MKPointAnnotation()
       let annotation2 = MKPointAnnotation()
        let annotation3 = MKPointAnnotation()
       let centerCoordinate = CLLocationCoordinate2D(latitude: 34.0640, longitude: -117.1638)
          let centerCoordinate2 = CLLocationCoordinate2D(latitude:    34.051690, longitude: -117.153144)
    
       let centerCoordinate3 = CLLocationCoordinate2D(latitude:  34.039300, longitude: -117.170068)
      
       
       annotation.coordinate = centerCoordinate
       annotation2.coordinate = centerCoordinate2
       annotation3.coordinate = centerCoordinate3
       annotation.title = "Barber 1"
       annotation2.title = "Barber 2"
       annotation3.title = "Barber 3"
       
       
       uiView.addAnnotation(annotation)
        uiView.addAnnotation(annotation2)
        uiView.addAnnotation(annotation3)
       uiView.setRegion(region, animated: true)
     }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
