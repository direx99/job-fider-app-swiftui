//
//  JobView.swift
//  Job Finder
//
//  Created by Dinith Hasaranga on 2023-04-20.
//

import SwiftUI

struct JobView: View {
    @State var shouldPresentSheet = true
    
    var body: some View {
        VStack{
            ScrollView(showsIndicators: false){
                VStack(alignment:.leading){
                    HStack(alignment: .top){
                        VStack(alignment:.leading){
                            
                            Image("mslogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120)
                            Text("UI UX Designer")
                                .font(.system(size: 16).weight(.bold))
                            HStack{
                                Text("2 Hours ago")
                                    .font(.system(size: 10))
                                    .padding(.horizontal,15)
                                    .padding(.vertical,3)
                                    .background(Color("newbox"))
                                    .cornerRadius(4)
                                
                                Text("• 208 Applicants")
                                    .font(.system(size: 12).weight(.bold))
                                    .padding(.leading,10)
                                
                                
                            }
                            VStack{
                                
                                
                                
                                Group{
                                    
                                    HStack(spacing:15){
                                        Image(systemName: "mappin.circle")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 14,height: 14)
                                        Text("Colombo ,Sri Lanka")
                                            .font(.system(size: 14).weight(.bold))

                                        Spacer()

                                    }
                                    HStack(spacing:15){
                                        Image(systemName: "case")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 14,height: 14)
                                        Text("Full-Time")
                                            .font(.system(size: 14).weight(.bold))
                                        Spacer()

                                    
                                    }
                                    HStack(spacing:15){
                                        Image(systemName: "dollarsign.circle")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 14,height: 14)
                                        Text("Colombo ,Sri Lanka")
                                            .font(.system(size: 14).weight(.bold))
                                        Spacer()

                                    }
                                }
                                .padding(.vertical,1)
                                .foregroundColor(.gray)
                                .bold()
                                
                                
                                
                                
                                
                            }
                            .padding(.vertical)
                            
                            Text("Job Reqirements")
                                .font(.system(size: 17).weight(.bold))
                            
                            Group{
                                
                                HStack(spacing:15){
                                    Image(systemName: "mappin.circle")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 14,height: 14)
                                    Text("Colombo ,Sri Lanka")
                                        .font(.system(size: 14).weight(.bold))
                                    Spacer()

                                }
                                HStack(spacing:15){
                                    Image(systemName: "case")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 14,height: 14)
                                    Text("Full-Time")
                                        .font(.system(size: 14).weight(.bold))
                                    Spacer()

                                
                                }
                                HStack(spacing:15){
                                    Image(systemName: "dollarsign.circle")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 14,height: 14)
                                    Text("Colombo ,Sri Lanka")
                                        .font(.system(size: 14).weight(.bold))
                                    Spacer()

                                }
                            }
                            .padding(.vertical,1)
                            .foregroundColor(.gray)
                            .bold()
                            
                            Text("Job Description")
                                .font(.system(size: 17).weight(.bold))
                                .padding(.top,15)
                                .padding(.bottom,5)
                            
                            Text("To get started, click the placeholder text and start typing.Use your cover letter to show how your talents and experience will solve a problem or drive results for your future employer. For example, if you say that you work well in a team, give an example of how you used your teamwork skills during your last internship, then show how this experience will benefit the employer.It's all about personalisation. \nWrite a cover letter that uniquely presents the real you and the future impact that only you can make at the company.")
                                .font(.system(size: 14))
                            
                            
                            
                            
                        }
                        
                        
                        Spacer()
                        
                        
                    }
                }
                .padding()
                
               
                
            }
        }

        .toolbar(.hidden, for: .tabBar)
        .padding()

        

    }

    
}
//
//struct JobView_Previews: PreviewProvider {
//    static var previews: some View {
//        JobView()
//    }
//}

struct BottomSheetView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("This is a Bottom Sheet")
                .font(.headline)
                .padding()
            Spacer()
            //            Button("Close") {
            //                self.presentationMode.wrappedValue.dismiss()
            //            }
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
        .edgesIgnoringSafeArea(.bottom)
        .offset(y: UIScreen.main.bounds.height * 0.7)
        
    }
}
