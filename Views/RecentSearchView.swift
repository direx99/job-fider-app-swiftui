//
//  RecentSearchView.swift
//  Job Finder
//
//  Created by Dinith Hasaranga on 2023-04-13.
//

import SwiftUI

struct RecentSearchView: View {
    @State var jobTitle : String
    var body: some View {
        VStack{
            
            
            VStack(alignment:.leading){
                Group{
                    
                    
                    HStack{
                        
                        VStack{
                            Image(systemName: "applelogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30 , height: 30)
                                .padding(.horizontal)
                            
                        }
                        VStack(alignment: .leading){
                            Text("\(jobTitle)")
                                .font(.system(size: 14))
                                .fontWeight(.semibold)
                            
                            
                            Text("Microsft")
                                .foregroundColor(.gray)
                                .font(.system(size: 9))
                                .fontWeight(.semibold)
                            
                            HStack(spacing:10){
                                Text("Full-Time")
                                    .font(.system(size: 6))
                                    .padding(.horizontal,10)
                                    .padding(.vertical,5)
                                    .background(Color("LightGray"))
                                    .cornerRadius(5)
                                Text("2 Hours Ago")
                                    .font(.system(size: 6))
                                    .padding(.horizontal,10)
                                    .padding(.vertical,5)
                                    .background(Color("newbox"))
                                    .cornerRadius(5)
                                
                                
                                
                                
                            }
                            .padding(.top,-4)

                            
                        }
                        .padding(.leading,10)
                        Spacer()
                        
                        
                        VStack{
                            Image(systemName: "bookmark")
                                .resizable()
                                .frame(width: 10,height: 13)
                                .foregroundColor(Color.gray)
                                .padding(.top,-25)
                            
                            
                        }
                        
                    }

                    
                    
                    
                    
                    
                    
                    
                }
                
                
                
                
                
                
            }
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.7)
                
                
            )
            
        }
        
    }
}
