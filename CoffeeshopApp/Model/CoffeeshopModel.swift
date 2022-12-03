
import Foundation

struct CoffeeshopModel: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let location: String
    let review: String
    var isFavorite: Bool
    
    public struct CoffeeshopProvider {
        static func all() -> [CoffeeshopModel] {
            return [
                CoffeeshopModel(image: "bojaeatery", name: "Boja Eatery", location: "Jl. Sumatera No. 21, Kota Bandung", review: "The food is delicious, cooked just right.  Friendly service.  Cozy atmosphere with floral decorations.  There is a ~robot~ that sends the dish.  Prices are reasonable for a restaurant of its class", isFavorite: false),
                
                CoffeeshopModel(image: "brewery", name: "Lanevo Cafe", location: "Jl. Jawa No. 46, Kota Bandung", review: "Unity heritage and modern concept and live music performance every weekend", isFavorite: false),
                
                CoffeeshopModel(image: "casadela", name: "Lotu Coffee & Eatery", location: "Jl. Kalimantan No. 11, Kota Bandung", review: "The area is outdoor, but don't worry if it rains there is an area that uses a canopy. There are chairs for coffee, some use a sofa.", isFavorite: false),
                
                CoffeeshopModel(image: "dagoterrace", name: "Keuken Van Elsje", location: "Jl. Buton No. 11, Kota Bandung", review: "Homey and cozy interior, but limited parking space (car) and dine-in seat. Recommended 10/10", isFavorite: false),
                
                CoffeeshopModel(image: "holakoffie", name: "Hafa Warehouse", location: "Jl. Gudang Selatan No. 88, Kota Bandung", review: "One of the best places for hanging out with coffee and various foods. The price range is moderate, the ambiance is very comfortable.", isFavorite: false),
                
                CoffeeshopModel(image: "imahkai", name: "Jack Runner Roastery", location: "Jl. Panaitan No. 34, Kota Bandung", review: "Good afternoon, coffee connoisseurs,, is the best quality and satisfaction for the lovers. Moreover, the manual method will taste better.", isFavorite: false),
                
                CoffeeshopModel(image: "jiwan", name: "Kozi Coffee 1.0", location: "Jl. Gudang Selatan No. 22, Kota Bandung", review: "A nice, cozy, and simple place to enjoy coffee experience. Can't drink some nice coffee here? That's okay, because they have other non-coffee beverages!", isFavorite: false),
                
                CoffeeshopModel(image: "kilogram", name: "Kopi Gandapoera", location: "Jl. Gandapura No. 14, Kota Bandung", review: "Taste of kopi gula aren is good and the place so comfortable for WFC 😍", isFavorite: false),
                
                CoffeeshopModel(image: "masagi", name: "Contrast Coffee", location: "Jl. Anggrek No. 6, Kota Bandung", review: "Clean, bright, airy, small spaces. Good coffee. Their long black has slightly fruity notes and has a light coffee flavor. Warm and friendly staff.", isFavorite: false),
                
                CoffeeshopModel(image: "nannys", name: "Nomina Public", location: "Jl. Kemuning No. 17, Kota Bandung", review: "A tiny coffeeshop with a good food! I ordered chicken mentai rice + cold chocolate for IDR 50K.", isFavorite: false),
                
                CoffeeshopModel(image: "sabanakopi", name: "SMITH Coffee", location: "Jl. Kemuning No. 16, Kota Bandung", review: "Found another favorite spot just right for my caffeine addiction. The coffee hits just right.", isFavorite: false),
                
                CoffeeshopModel(image: "sinikupi", name: "Critoe Coffee", location: "Jl. Gandapura No. 33", review: "Affordable price, great wifi, great environment for work or hangout with friends.", isFavorite: false)
            ]
        }
    }
}


