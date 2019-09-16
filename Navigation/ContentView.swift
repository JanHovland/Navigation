//
//  ContentView.swift
//  Navigation
//
//  Created by Jan Hovland on 16/09/2019.
//  Copyright © 2019 Jan Hovland. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName = ""
    @State var lastName = ""

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        Group {
                            TextField("First name", text: $firstName)
                            .padding(12)
                        } .background(Color.white)
                          .clipShape(RoundedRectangle(cornerRadius: 5))
                          .shadow(radius: 5)
                        
                        Group {
                            TextField("Last name", text: $lastName)
                            .padding(12)
                        } .background(Color.white)
                          .clipShape(RoundedRectangle(cornerRadius: 5))
                          .shadow(radius: 5)
                                              
                        Button(action: {
                            
                        }) {
                            Group {
                                Text("Create user")
                                    .foregroundColor(.white)
                                    .padding(12)
                            } .background(Color.blue)
                              .clipShape(RoundedRectangle(cornerRadius: 5))
                            .shadow(radius: 5)
                        }

                        } .padding(12)
                    
                } .background(Color.gray)
              
                List {
                    Text("EMPTY BOX")
                }
            } .navigationBarTitle("Credit Card Form")
                .navigationBarItems(leading: HStack {
                    Text("First Name:")
                    Text(firstName)
                   .foregroundColor(Color.red)
                    
                    Text("Last Name:")
                    Text(lastName)
                    .foregroundColor(Color.red)
               })
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
