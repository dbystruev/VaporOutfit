import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }
    
    let hello = app.grouped("hello")

    hello.get { req -> String in
        return "Hello, world!"
    }
    
    hello.get(":name") { req -> String in
        guard let name = req.parameters.get("name") else { return "Hello!" }
        return "Hello, \(name)!"
    }
}
