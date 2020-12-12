import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "Try to use /offers"
    }
    
    // MARK: - Offers
    app.group("offers") { offers in
        // GET /offers
        offers.get { req -> String in
            // Try to decode offer query
            let offer = try req.query.decode(OffersQuery.self)
            
            return "GET /offers?id=\(offer.id)"
        }
    }
}
