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
            ScrollView{
                VStack(alignment:.leading){
                    HStack(alignment: .top){
                        VStack(alignment:.leading){
                            
                            Image("mslogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 120)
                            Text("UI UX Designer")
                                .font(.system(size: 20).weight(.bold))
                            HStack{
                                Text("2 Hours ago")
                                    .font(.system(size: 12))
                                    .padding(.horizontal,15)
                                    .padding(.vertical,4)
                                    .background(Color("newbox"))
                                    .cornerRadius(4)
                                
                                Text("• 208 Applicants")
                                    .bold()
                                    .padding(.leading)
                                
                                
                            }
                            VStack{
                                
                                
                                
                                Group{
                                    Text("• 208 Applicants")
                                    Text("• 208 Applicants")
                                    Text("• 208 Applicants")
                                }
                                .padding(.vertical,1)
                                .foregroundColor(.gray)
                                .bold()
                                
                                
                                
                                
                                
                            }
                            .padding(.vertical)
                            
                            Text("Job Reqirements")
                                .font(.title3)
                            
                            Group{
                                Text("• 208 Applicants")
                                Text("• 208 Applicants")
                                Text("• 208 Applicants")
                            }
                            .padding(.vertical,1)
                            .foregroundColor(.gray)
                            .bold()
                            
                            Text("Job Reqirements")
                                .font(.title3)
                                .bold()
                                .padding(.top,15)
                                .padding(.bottom,5)
                            
                            Text("To get started, click the placeholder text and start typing.Use your cover letter to show how your talents and experience will solve a problem or drive results for your future employer. For example, if you say that you work well in a team, give an example of how you used your teamwork skills during your last internship, then show how this experience will benefit the employer.It's all about personalisation. Write a cover letter that uniquely presents the real you and the future impact that only you can make at the company.")
                            
                            
                            
                            
                        }
                        
                        
                        Spacer()
                        
                        
                    }
                }
                .padding()
                
                //            .sheet(isPresented: $shouldPresentSheet) {
                //                               print("Sheet dismissed!")
                //            } content: {
                //                BottomSheetView()
                //                    .presentationDetents([.height(100)])
                //
                //            }
                
            }
        }

        .toolbar(.hidden, for: .tabBar)

        

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
