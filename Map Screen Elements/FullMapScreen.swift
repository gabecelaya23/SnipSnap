//
//  FullMapScreen.swift
//  SnipSnap7
//
//  Created by Susan Celaya on 4/3/20.
//  Copyright © 2020 Gabriel Celaya. All rights reserved.
//

import SwiftUI
import Foundation

struct FullMapScreen: View {
    @State var txt = ""
    
    var body: some View {
           VStack{
            searchView(txt: $txt)
                MapView()
            }
    }
}

struct FullMapScreen_Previews: PreviewProvider {
    static var previews: some View {
        FullMapScreen()
    }
}
//This struct creates a searchbar at the top of the mapview to search fro certain barbers. 
struct searchView : UIViewRepresentable{
    
    @Binding var txt: String
    
    func makeCoordinator() -> searchView.Coordinator {
        return searchView.Coordinator(parent1: self)
    }
    
    func makeUIView(context: UIViewRepresentableContext<searchView>) -> UISearchBar {
        let searchbar = UISearchBar()
        searchbar.barStyle = .default
        searchbar.autocapitalizationType = .none
        return searchbar
    }
    
    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<searchView>) {
    
    }
    
    class Coordinator : NSObject,UISearchBarDelegate{
        
        var parent : searchView!
    
        
        init(parent1: searchView){
            parent = parent1
        }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String){
        parent.txt = searchText
        }
    }
}
