//
//  ChatMessageController.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 27/08/19.
//

import Vapor

final class ChatMessageController {
    func makeMessageBot() -> ChatMessage {
        let message = ChatMessage(name: "Bot", text: "Random message \(UUID().uuidString.lowercased())", isIncoming: true, date: Date())
        return message
    }
    
    func makeJsonMessageBot() -> Data {
        let json = try! JSONEncoder().encode(makeMessageBot())
        return json
    }
}
