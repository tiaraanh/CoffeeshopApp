
import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.purple, .indigo], startPoint: .leading, endPoint: .bottom)
                .ignoresSafeArea()
            
            Text("Hello iOS Developers")
                .font(.largeTitle)
                .fontWeight(.bold)
            .foregroundColor(.green)
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
