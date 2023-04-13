//
//  ContentView.swift
//  Job Finder
//
//  Created by Dinith Hasaranga on 2023-04-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HomeView (jobTitle: "")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            ContentView()
                .tabItem {
                   Image(systemName: "heart")
                }
            
            LatestJobView(jobTitle: "")
                .tabItem {
                   Image(systemName: "heart")
                }
           
            
            
        }
        .accentColor(.black)
        
    }
}
