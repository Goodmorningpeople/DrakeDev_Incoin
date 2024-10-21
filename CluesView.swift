import SwiftUI

struct Clue: Identifiable {
    let id = UUID()
    let description: String
}

struct CluesView: View {
    let clues: [Clue] = [
        Clue(description: "Clue 1: Description of clue 1."),
        Clue(description: "Clue 2: Description of clue 2.")
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
