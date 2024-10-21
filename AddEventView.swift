import SwiftUI

struct AddEventView: View {
    @State private var title: String = ""
    @State private var date: Date = Date()
    
    var body: some View {
        Form {
            TextField("Event Title", text: $title)
            DatePicker("Event Date", selection: $date, displayedComponents: .date)
            
            Button("Add Event") {
                // Add event functionality here
            }
        }
        .navigationTitle("Add New Event")
    }
}

struct AddEventView_Previews: PreviewProvider {
    static var previews: some View {
        AddEventView()
    }
}
