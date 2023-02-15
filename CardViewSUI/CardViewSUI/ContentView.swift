import SwiftUI

struct ContentView: View {
    private let persons = [person1, person2 ,person3 ,person4]
    var body: some View {
        List {
            ForEach(0..<persons.count) {
                PersonCardView(person: persons[$0])
                    .listRowSeparator(.hidden)
            }
        }
        .listStyle(.plain)
        .buttonStyle(.plain)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
