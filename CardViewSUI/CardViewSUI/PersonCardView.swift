import SwiftUI

struct PersonCardView: View {
    @State private var isFollowed = false
    
    let person: Person
    
    var body: some View {
        VStack {
            ZStack {
                Image(person.headerImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 80)
                    .clipped()
                
                Image(person.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                    .clipShape(Circle())
                    .offset(y: 40)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
            .overlay(alignment: .topTrailing) {
                Button {
                    //TODO: action
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .font(.title2)
                        .padding(3)
                }
            }
            
            VStack(spacing: 0) {
                if !isFollowed {
                    Button {
                        withAnimation {
                            isFollowed.toggle()
                        }
                        
                    } label: {
                        Text("Follow")
                            .padding(.vertical, 4)
                            .padding(.horizontal)
                            .overlay {
                                Capsule()
                                    .stroke(lineWidth: 2)
                            }
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                    .transition(.scale(scale: 10000 , anchor: .zero))
                } else {
                    Button {
                        isFollowed.toggle()
                    } label: {
                        Image(systemName: "checkmark.seal.fill")
                            .padding(.vertical, 3.2)
                            .padding(.horizontal)
                            .foregroundColor(.green)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()
                }
  
                HStack {
                    Text(person.name)
                        .fontWeight(.bold)
                    Text("· \(person.followerCount) Followers")
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                
                Text(person.jobTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom])
            }
        }
        .background(Color(.tertiarySystemFill))
        .cornerRadius(12)
    }
}

struct PersonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PersonCardView(person: person2)
            .previewLayout(.sizeThatFits)
    }
}
