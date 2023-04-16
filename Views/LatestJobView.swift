//
//  LatestJobView.swift
//  Job Finder
//
//  Created by Dinith Hasaranga on 2023-04-03.
//

import SwiftUI

struct LatestJobView: View {
    @State var jobTitle : String 
    var body: some View {
        VStack{
            
            
            VStack(alignment:.leading){
                Group{
                    HStack{
                        Spacer()
                        Text("NEW")
                            .font(.system(size: 6))
                            .padding(.horizontal,6)
                            .padding(.vertical,3)
                            .background(Color("newbox"))
                            .cornerRadius(3)
                            .padding(.bottom,-5)
                    }

                    Image("mslogo")
                        .resizable()
                        .scaledToFit()

                    Text("\(jobTitle)")
                        .font(.system(size: 14))
                        .fontWeight(.semibold)
                    

                    Text("Microsft")
                        .foregroundColor(.gray)
                        .font(.system(size: 12))
                        .fontWeight(.semibold)
                        .padding(.bottom,5)

                    
                    HStack{
                       Image(systemName: "location.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                            .frame(width: 10, height:10)
                        Text("Colombo 07")
                            .font(.system(size: 10))
                            .fontWeight(.semibold)
                    }
                    

                    HStack{
                       Image(systemName: "bag.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                            .frame(width: 10, height:10)
                        Text("Full-Time")
                            .font(.system(size: 10))
                            .fontWeight(.semibold)

                           
                    }
                    .padding(.top,-4)

                }


                
                    


            }
            .frame(width: 140,height:140)
            .padding(15)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 0.7)
                    .padding(1)

            )
            
        }
    }
}

//struct LatestJobView_Previews: PreviewProvider {
//    static var previews: some View {
//        LatestJobView()
//    }
//}
