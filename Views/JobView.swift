//
//  JobView.swift
//  Job Finder
//
//  Created by Dinith Hasaranga on 2023-04-20.
//

import SwiftUI

struct JobView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment: .top){
                VStack(alignment:.leading){
                    
                    Image("mslogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120)
                    Text("UI UX Designer")
                        .font(.system(size: 20).weight(.bold))
                    Spacer()
                }
                Spacer()

            }
        }
        .padding()
    }
}
//
//struct JobView_Previews: PreviewProvider {
//    static var previews: some View {
//        JobView()
//    }
//}
