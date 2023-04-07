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
                        .font(.title3)
                        .fontWeight(.semibold)
                    

                    Text("Microsft")
                        .foregroundColor(.gray)
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(.bottom,5)

                    
                    HStack{
                       Image(systemName: "location.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                            .frame(width: 12, height:12)
                        Text("Colombo 07")
                            .foregroundColor(.gray)
                            .font(.caption)
                            .fontWeight(.semibold)
                    }
                    

                    HStack{
                       Image(systemName: "bag.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(Color.gray)
                            .frame(width: 12, height:12)
                        Text("Colombo 07")
                            .foregroundColor(.gray)
                            .font(.caption)
                            .fontWeight(.semibold)

                           
                    }

                }


                
                    


            }
            .frame(width: 160,height: 160)
            .padding(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 1)
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
