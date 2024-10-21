import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let title: String
    let date: Date
}

struct TimelineView: View {
    let events: [Event] = [
        Event(title: "Event 1", date: Date()),
        Event(title: "Event 2", date: Date().addingTimeInterval(-86400))
    ]
    
    var body: some View {
        List(events) { event in
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.headline)
                Text(event.date, style: .date)
                    .font(.subheadline)
            }
            .padding()
        }
        .navigationTitle("Timeline")
    }
}

struct TimelineView_Previews: PreviewProvider {
    static var previews: some View {
        TimelineView()
    }
}
