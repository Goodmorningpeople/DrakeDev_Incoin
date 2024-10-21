import SwiftUI

struct Suspect: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let description: String
}

struct SuspectListView: View {
    let suspects: [Suspect] = [
        Suspect(name: "Thiha", age: 30, description: "A notorious hacker with a knack for stealing digital currencies."),
        Suspect(name: "Avyan", age: 25, description: "A tech-savvy individual who works closely with digital assets."),
        Suspect(name: "Christopher", age: 28, description: "An experienced programmer who has faced financial trouble recently."),
        Suspect(name: "Aldo", age: 24, description: "A young developer with a mysterious past."),
        Suspect(name: "Astral", age: 29, description: "A skilled social engineer who manipulates situations to their advantage."),
        Suspect(name: "Zachary", age: 32, description: "An ambitious entrepreneur who’s been under financial pressure.")
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
