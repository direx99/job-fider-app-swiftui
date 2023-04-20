//
//  ContentView.swift
//  Job Finder
//
//  Created by Dinith Hasaranga on 2023-04-03.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 3
    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView( jobTitle: "")
                .tabItem {
                    Image(systemName: "house.fill")
                        
                }
                .tag(1)
          
            HomeView( jobTitle: "")
             .tabItem {
                    Image(systemName: "person")
                       
                }
                .tag(0)
            HomeView( jobTitle: "")
         .tabItem {
                    Image(systemName: "cart")
                       
                }
                .tag(0)
            JobView()
          .tabItem {
                    Image(systemName: "person")
                       
                }
                .tag(3)
           
        }
        .accentColor(.black)
        
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
       
            ContentView()
                
    }
}
