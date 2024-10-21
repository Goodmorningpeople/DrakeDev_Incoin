import SwiftUI

struct Clue: Identifiable {
    let id = UUID()
    let description: String
}

struct CluesView: View {
    let clues: [Clue] = [
        Clue(description: "Clue 1: A laptop was found at the crime scene with traces of digital footprints leading to an individual with tech experience"),
        Clue(description: "Clue 2: Witnesses reported seeing a figure near the INCoin vault shortly before the theft. The figure was wearing a distinctive green jacket."),
        Clue(description: "Clue 3: The stolen INCoin was traced to a location")
    ]
    
    var body: some View {
        List(clues) { clue in
            Text(clue.description)
                .padding()
        }
        .navigationTitle("Clues")
    }
}

struct CluesView_Previews: PreviewProvider {
    static var previews: some View {
        CluesView()
    }
}
