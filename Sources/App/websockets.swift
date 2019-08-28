//
//  websockets.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 27/08/19.
//

import Vapor

public func sockets(_ websockets: NIOWebSocketServer) {
    websockets.get("echo-test") { ws, req in
        print("ws connnected")
        ws.onText { ws, text in
            print("ws received: \(text)")
            ws.send("echo - \(text)")
        }
    }
    
    websockets.get("chat") { ws, req in
        print("ws json connnected")
        
        ws.onText { ws, text in
            print("ws onText: \(text)")
            ws.send("echo - \(text)")
        }
        
        ws.onError { ws, error in
            print("ws received error: \(error)")
            ws.send("echo - \(error)")
        }
        
        ws.onBinary { ws, object in
            let controller = ChatMessageController()
            print("BOT send: \(controller.makeMessageBot().text)")
            ws.send(controller.makeJsonMessageBot())
        }
    }
}
