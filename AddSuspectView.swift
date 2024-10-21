import SwiftUI

struct AddSuspectView: View {
    @State private var name: String = ""
    @State private var age: Int = 0
    @State private var description: String = ""
    
    var body: some View {
        Form {
            TextField("Suspect Name", text: $name)
            TextField("Age", value: $age, formatter: NumberFormatter())
            TextField("Description", text: $description)
            
            Button("Add Suspect") {
                // Add suspect functionality here
            }
        }
        .navigationTitle("Add New Suspect")
    }
}

struct AddSuspectView_Previews: PreviewProvider {
    static var previews: some View {
        AddSuspectView()
    }
}

