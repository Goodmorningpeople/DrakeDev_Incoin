import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: TimelineView()) {
                    Text("View Timeline")
                        .font(.title2)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
                
                NavigationLink(destination: SuspectListView()) {
                    Text("View Suspects")
                        .font(.title2)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding()
            }
            .navigationTitle("Main Interface")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
