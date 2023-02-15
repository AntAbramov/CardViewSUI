struct Person {
    let headerImage: String
    let profileImage: String
    let name: String
    let followerCount: Int
    let jobTitle: String
}

let person1 = Person(headerImage: "designerHeader", profileImage: "designerProfile",
                     name: "Lara Brown", followerCount: 2384, jobTitle: "Designer")
let person2 = Person(headerImage: "developerHeader", profileImage: "developerProfile",
                     name: "Jack Davis", followerCount: 1840, jobTitle: "IOS Developer")
let person3 = Person(headerImage: "HRHeader", profileImage: "HRProfile",
                     name: "Linda Brown", followerCount: 1453, jobTitle: "Human Resources")
let person4 = Person(headerImage: "DataScienceHeader", profileImage: "DataScienceProfile",
                     name: "Mara Hopps", followerCount: 3296, jobTitle: "Data Science")
