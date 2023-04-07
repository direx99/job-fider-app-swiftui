//
//  HomeView.swift
//  Job Finder
//
//  Created by Dinith Hasaranga on 2023-04-03.
//

import SwiftUI


struct HomeView: View {
    @State var userName : String = "Dinith"
    @State var jobTitle : String

    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment: .top){
                VStack(alignment:.leading){
                    Text("Hey \(userName)")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.bottom,-5)
                      
                    Text("find your dream job here")
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Image(systemName: "bell.badge.fill")
                   
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.gray)
                    .frame(width: 30,height: 30)

            }
            SerachBar()
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 20){
                    LatestJobView(jobTitle: "UI UX Engineer")
                    LatestJobView(jobTitle: "UI UX Engineer")
                    LatestJobView(jobTitle: "UI UX Engineer")
                    
                  
                    Spacer()
                    
                    
                }
            }
            Spacer()

            
        }
        .padding(30)
    }
        
}

struct SerachBar:View{
    @State var userName : String = ""

    var body: some View{
        HStack{
            
            TextField("Search your job here", text: $userName)
                        .background(Color.white)
                        .cornerRadius(20)
                        .leadingImage(systemName: "magnifyingglass")
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.gray, lineWidth: 1)
                                .padding(1)
                        )
                        .padding(.vertical)
            
                        

            
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static let jobTitle = "UI UX Engineer"
    static var previews: some View {
        HomeView(jobTitle: jobTitle)
    }
}


extension View {
    func leadingImage(systemName: String) -> some View {
        HStack {
            Image(systemName: systemName)
                .foregroundColor(.gray)
                .padding(.leading, 8)
            self
        }
    }
}
