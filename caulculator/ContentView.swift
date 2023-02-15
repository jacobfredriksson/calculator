//
//  ContentView.swift
//  caulculator
//
//  Created by Jacob Fredriksson on 2023-02-13.
//

import SwiftUI



struct ContentView: View {
    
    @State var sum = "0"
    
    var body: some View {
        VStack() {
            VStack() {
                HStack() {
                    ZStack() {
                        TextField("$0", text: $sum)
                            .font(.system(size: 80))
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .lineLimit(1)
                            .disabled(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                          
                     
                        Spacer()
                            .padding(.trailing, 20)
                        
                            
                    }.padding(.leading, 290.0)
                }.padding()
                
                
                HStack() {
                Button(action: {print("pressed 7")}) {
                    Text("7").font(.title).frame(width: 70, height: 70)
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                 
                
                Button(action: {print("8")}) {
                    Text("8").font(.title).frame(width: 70, height: 70)
                    
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                Button(action: {print("pressed 9")}) {
                    Text("9").font(.title).frame(width: 70, height: 70)
                    
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                Button(action: {print("pressed /")}) {
                    Text("/").font(.title).frame(width: 70, height: 70).padding(6)
                    
                }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.102, saturation: 0.918, brightness: 0.939)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                }.buttonStyle(PlainButtonStyle()).foregroundColor(.white).padding(10)
         
                
            
       
                HStack() {
                Button(action: {print("pressed 4")}) {
                    Text("4").font(.title).frame(width: 70, height: 70)
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                
                Button(action: {print("pressed 5")}) {
                    Text("5").font(.title).frame(width: 70, height: 70)
                    
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                Button(action: {print("pressed 6")}) {
                    Text("6").font(.title).frame(width: 70, height: 70)
                    
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                Button(action: {print("pressed x")}) {
                    Text("x").font(.title).frame(width: 70, height: 70).padding(6)
                    
                }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.102, saturation: 0.918, brightness: 0.939)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                }.buttonStyle(PlainButtonStyle()).foregroundColor(.white).padding(10)
        
        
           
                HStack() {
                Button(action: {print("pressed 1")}) {
                    Text("1").font(.title).frame(width: 70, height: 70)
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                
                Button(action: {print("pressed 2")}) {
                    Text("2").font(.title).frame(width: 70, height: 70)
                    
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                Button(action: {print("pressed 3")}) {
                    Text("3").font(.title).frame(width: 70, height: 70)
                    
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                Button(action: {print("pressed -")}) {
                    Text("-").font(.title).frame(width: 70, height: 70).padding(6)
                    
                }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.102, saturation: 0.918, brightness: 0.939)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                }.buttonStyle(PlainButtonStyle()).foregroundColor(.white).padding(10)
                    
                    
                HStack() {
                Button(action: {print("Pressed AC")}) {
                    Text("AC").font(.title).frame(width: 70, height: 70)
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.102, saturation: 0.918, brightness: 0.939)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                
                Button(action: {print("pressed 0")}) {
                    Text("0").font(.title).frame(width: 160, height: 70)
                    
                }.padding(6).background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.114, brightness: 0.192)/*@END_MENU_TOKEN@*/).clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                Button(action: {print("pressed x")}) {
                    Text("=").font(.title).frame(width: 70, height: 70).padding(6)
                    
                }.background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.102, saturation: 0.918, brightness: 0.939)/*@END_MENU_TOKEN@*/).clipShape(Circle())
                
                }.buttonStyle(PlainButtonStyle()).foregroundColor(.white).padding(10)
                
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity,maxHeight: 400, alignment: Alignment.centerLastTextBaseline)
            Spacer()

        }
        .frame(maxWidth: .infinity,maxHeight: .infinity, alignment: Alignment.centerLastTextBaseline)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.black/*@END_MENU_TOKEN@*/)
        
      

    }
  
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
