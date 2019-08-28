//
//  RandomChatMessage.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 28/08/19.
//

import Foundation

final class RandomChatMessage {
    fileprivate static let messagesFromServer = [
        ChatMessage(name: "Support",
                    text: "Here's my very first message",
                    isIncoming: true,
                    date: Date.dateFromCustomString(customString: "03/08/2018")),
        ChatMessage(name: "Support",
                    text: "I'm going to message another long message that will word wrap",
                    isIncoming: true,
                    date: Date.dateFromCustomString(customString: "03/08/2018")),
        ChatMessage(name: "Support",
                    text: """
                            I'm going to message another long message that will word wrap,
                            I'm going to message another long message that will word wrap,
                            I'm going to message another long message that will word wrap
                            """,
                    isIncoming: true,
                    date: Date.dateFromCustomString(customString: "15/09/2018")),
        ChatMessage(name: "Support",
                    text: "Yo, dawg, Whaddup!",
                    isIncoming: true,
                    date: Date()),
        ChatMessage(name: "Support",
                    text: "This message should appear on the left with a white background bubble",
                    isIncoming: true,
                    date: Date.dateFromCustomString(customString: "15/09/2018")),
        ChatMessage(name: "Support", text: "Ok",
                    isIncoming: true,
                    date: Date.dateFromCustomString(customString: "31/10/2018"))
    ]

    static func radomizeMessage() -> ChatMessage {
        let ramdonIndex = Int.random(in: 0 ..< RandomChatMessage.messagesFromServer.count)
        return RandomChatMessage.messagesFromServer[ramdonIndex]
    }
}
