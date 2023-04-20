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
        NavigationStack{

        VStack(alignment:.leading){
            HStack(alignment: .top){
                VStack(alignment:.leading){
                    Text("Hey \(userName)")
                        .font(.system(size: 20).bold())
                        .fontWeight(.semibold)
                        .padding(.bottom,-5)
                      
                    Text("find your dream job here")
                        .font(.system(size: 14).bold())
                        .foregroundColor(.gray)
                }
                
                Spacer()
                Image(systemName: "bell.badge.fill")
                   
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(Color.gray)
                    .frame(width: 24,height: 24)
                    .padding(.top,5)
            }
            SerachBar()
            Text("Latest Job")
                .font(.system(size: 16).bold())
                .padding(5)
                .padding(.bottom,10)
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 10){
                        NavigationLink(destination: JobView()) {
                            LatestJobView(jobTitle: "UI UX Engineer")
                            LatestJobView(jobTitle: "UI UX Engineer")
                            LatestJobView(jobTitle: "UI UX Engineer")
                        }
                        
                    
                   
                    Spacer()
                    
                    
                   
                }
               
            }
            Text("Recently Searched")
                .font(.system(size: 16).bold())
                .padding(5)
                .padding(.top,25)
                .padding(.bottom,10)

            
            Group{
                VStack(spacing:15){
                    RecentSearchView(jobTitle: "Software Developer")
                    RecentSearchView(jobTitle: "QA Engineer")
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
                .font(.system(size: 15).bold())
                .leadingImage(systemName: "magnifyingglass")
                .padding(13)
            
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 0.7)
                        .padding(1)
                )
                .padding(.vertical)
            
            
            
        }
            
        }
    }
}
//
//struct HomeView_Previews: PreviewProvider {
//    static let jobTitle = "UI UX Engineer"
//    static var previews: some View {
//        HomeView(jobTitle: "jobTitle")
//    }
//}


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
