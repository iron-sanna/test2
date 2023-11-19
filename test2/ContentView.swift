//
//  ContentView.swift
//  test2
//
//  Created by Sanna Tupala on 2023-11-18.
//  Copyright © 2023 test. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var adddog = ""
    
    @State var dogs = ["Pomeranian", "Shitsuu", "Wolfdog"]
    
    var body: some View {
        VStack {
            Text("Hello")
        
        HStack {
            
        TextField("Add more dog", text: $adddog)
            
        Button(action: {
                self.dogs.append(self.adddog)
            }){
                Text("Add dog")
            }
            
        }
  
        List(dogs, id: \.self) {person in Text(person)}
  
            Button(action: {
                self.dogs = [""]
                
            }){
                Text("Remove dogs")
            }
            
}}}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
