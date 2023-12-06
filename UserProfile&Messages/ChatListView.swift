//
//  ChatListView.swift
//  UserProfile&Messages
//
//  Created by nika razmadze on 06.12.23.
//

import SwiftUI

struct Person: Identifiable {
    var id = UUID()
    let name: String
    let lastMessage: String
}

struct ChatListView: View {
    
    @State private var conversations = [
        Person(name: "Francisco Miles", lastMessage: "I went ther yesterday"),
        Person(name: "Arlene", lastMessage: "IDK what else is there to do"),
        Person(name: "Darlene", lastMessage: "No, i can't come tomorrow"),
        Person(name: "Eduardo", lastMessage: "Go to hell"),
        Person(name: "Aubrey", lastMessage: "Why is Eduardo so angry?!"),
        Person(name: "Jorge", lastMessage: "So, what's your plan this weekend"),
        Person(name: "Cody", lastMessage: "What's the progress on that task?"),
        Person(name: "Kristin", lastMessage: "Yeah!, You're right"),
        Person(name: "Brandie", lastMessage: "I went there yesterday"),
        Person(name: "Stella", lastMessage: "Martinique")
    ]
    
    private var deletedChats: [Person] = []
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(conversations) { person in
                        HStack {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding()
                                .foregroundStyle(Color.gray)
                            
                            VStack(alignment: .leading) {
                                
                                Text(person.name)
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                                
                                Text(person.lastMessage)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
                
                Button(action: {
                    clearConversations()
                }) {
                    Text("Clear Chat")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(8)
                }
                .frame(width: 221, height: 45)
                .padding()
            }
            .preferredColorScheme(.dark)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Chat")
        }
    }
    
    func clearConversations() {
        conversations.removeAll()
    }
}

#Preview {
    ChatListView()
}
