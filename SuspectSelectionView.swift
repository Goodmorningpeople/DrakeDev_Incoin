import SwiftUI

struct SuspectSelectionView: View {
    let suspects = ["Thiha", "Tall Avyan", "Christopher", "Aldo", "Astral", "Zachary"]
    @State private var selectedSuspect: String?
    @State private var message: String = ""

    var body: some View {
        VStack {
            Text("Who do you think is responsible for the INCoin heist?")
                .font(.headline)
                .padding()

            ForEach(suspects, id: \.self) { suspect in
                Button(action: {
                    selectedSuspect = suspect
                    checkSuspect(suspect)
                }) {
                    Text(suspect)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(5)
                }
            }
            
            if let selectedSuspect = selectedSuspect {
                Text(message)
                    .font(.subheadline)
                    .padding()
                    .foregroundColor(selectedSuspect == "Avyan" ? .green : .red)
            }

            Spacer()
        }
        .navigationTitle("Select a Suspect")
    }

    private func checkSuspect(_ suspect: String) {
        if suspect == "Avyan" {
            message = "Correct! Avyan was indeed the mastermind behind the heist."
        } else {
            message = "Wrong choice! Try again to uncover the truth."
        }
    }
}

struct SuspectSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SuspectSelectionView()
    }
}
