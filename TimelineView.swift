import SwiftUI

struct Event: Identifiable {
    let id = UUID()
    let title: String
    let date: Date
}

struct TimelineView: View {
    let events: [Event] = [
        Event(title: "Christopher leaves home", date: Date().addingTimeInterval(-14400)),
        Event(title: "Astral seen near vault", date: Date().addingTimeInterval(-13440)),
        Event(title: "Christopher reaches the vault", date: Date().addingTimeInterval(-12540)),
        Event(title: "Theft Reported", date: Date().addingTimeInterval(-12240)),
        Event(title: "INCoin transactions traced to a location", date: Date().addingTimeInterval(-10920)),
        Event(title: "Security Footage Checked", date: Date().addingTimeInterval(-9900)),
        Event(title: "Laptop Found", date: Date().addingTimeInterval(-8400))
    ]
    
    var body: some View {
        List(events) { event in
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.headline)
                Text(event.date, style: .time)
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

