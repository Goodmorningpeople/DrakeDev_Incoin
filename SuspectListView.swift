import SwiftUI

struct Suspect: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let description: String
}

struct SuspectListView: View {
    let suspects: [Suspect] = [
        Suspect(name: "Suspect 1", age: 30, description: "Description 1"),
        Suspect(name: "Suspect 2", age: 25, description: "Description 2")
    ]
    
    var body: some View {
        List(suspects) { suspect in
            VStack(alignment: .leading) {
                Text(suspect.name)
                    .font(.headline)
                Text("Age: \(suspect.age)")
                    .font(.subheadline)
                Text(suspect.description)
                    .font(.body)
            }
            .padding()
        }
        .navigationTitle("Suspect List")
    }
}

struct SuspectListView_Previews: PreviewProvider {
    static var previews: some View {
        SuspectListView()
    }
}
