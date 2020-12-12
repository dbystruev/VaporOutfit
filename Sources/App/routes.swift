import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "Try to use /offers"
    }
    
    // MARK: - Offers
    app.group("offers") { offers in
        // GET /offers
        offers.get { req in
            return "GET /offers"
        }
        
        offers.group(":id") { offer in
            // GET /offers/:id
            offer.get { req -> String in
                let id = req.parameters.get("id") ?? "nil"
                return "GET /offers/\(id)"
            }
        }
    }
}
