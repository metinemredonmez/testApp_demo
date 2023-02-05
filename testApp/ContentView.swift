

import SwiftUI

struct ContentView: View {
    var body: some View {

        GeometryReader{ geometry in

            VStack{
                Image("image").resizable().frame(width:geometry.size.width,height:geometry.size.height / 3)

                VStack(alignment: .leading){
                    Text("Meatball").font(.title).foregroundColor(.red)

                    HStack{
                        Text("Suitable for Cooking On The Grill")
                        Spacer()
                        Text("30 Jan")
                    }
                }.padding()

                VStack(spacing:20){
                    Text("500 grams of beef minced meat")
                    Text("1 cup of dry bread")
                    Text("2 onions")
                    Text("Half a bunch of parsley")
                    Text("1 teaspoon black pepper")
                }.padding()

                Spacer()

                HStack(spacing:0){
                    Text("Like").frame(width:geometry.size.width / 2,height: geometry.size.height / 10).background(Color.yellow)

                    Text("Review").frame(width:geometry.size.width / 2,height: geometry.size.height / 10).background(Color.orange)
                }


            }

        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



