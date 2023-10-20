//
//  ContentView.swift
//  myRandomBootsieXcode
//
//  Created by Cassie on 10/19/23.
//


import SwiftUI

struct WhichBootsie: View {
    var randomNum: Int
    var body: some View {
      //  let randomInt = Int.random(in: 0..<49)
        // convert to int to string
       // let x : Int = 45
        var stringValue = "\(randomNum)"
        
        Image(stringValue).resizable().frame(width: 300, height: 300, alignment: .center)
        
    }
}

struct ContentView: View {
    
   // @State var refresh: Bool = false
    @State private var randomInt = Int.random(in: 1..<49)
    
    var body: some View {
        ZStack {
            
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading,
                            endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Text("My Random Bootsie")
                    .font(.system(size: 37, weight: .medium, design: .default)).italic()
                .foregroundColor(.white)
                .padding(10)
                Spacer()
                //let randomInt = Int.random(in: 1..<49)
                WhichBootsie(randomNum: randomInt)
                Spacer()
                Button {
                    randomInt = Int.random(in: 1..<49)
                } label: { // what button looks like
                    Text("New Bootsie")
                        .frame(width: 280, height: 50)
                        .background(.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}



