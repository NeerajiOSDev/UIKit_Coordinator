import Foundation
import UIKit

// Existing structure for bike companies
struct BikeCompany {
    let id: Int
    let companyName: String
    let companyLogo: UIImage
    let establishingYear: Int
}

let bikeCompanies: [BikeCompany] = [
    BikeCompany(id: 1,
                companyName: "Hero MotoCorp",
                companyLogo: .heroAuto,
                establishingYear: 1984),
    BikeCompany(id: 2,
                companyName: "Bajaj Auto",
                companyLogo: .bajajAuto,
                establishingYear: 1945),
    BikeCompany(id: 3,
                companyName: "TVS Motor",
                companyLogo: .tvsAuto,
                establishingYear: 1978),
    BikeCompany(id: 4,
                companyName: "Royal Enfield",
                companyLogo: .royalAuto,
                establishingYear: 1901),
    BikeCompany(id: 5,
                companyName: "Honda",
                companyLogo: .hondaAuto,
                establishingYear: 1999),
    BikeCompany(id: 6,
                companyName: "Yamaha",
                companyLogo: .yamahaAuto,
                establishingYear: 1985),
    BikeCompany(id: 7,
                companyName: "Suzuki",
                companyLogo: .suzukiAuto,
                establishingYear: 1982),
    BikeCompany(id: 8,
                companyName: "KTM",
                companyLogo: .ktmAuto,
                establishingYear: 2012),
    BikeCompany(id: 9,
                companyName: "Jawa",
                companyLogo: .javaAuto,
                establishingYear: 1929),
    BikeCompany(id: 10,
                companyName: "Triumph",
                companyLogo: .triumphAuto,
                establishingYear: 2013)
]

struct Bike {
    let companyID: Int
    let bikeName: String
    let launchYear: Int
    let ccOfBike: Int
    let hpOfBike: Double
}

let bikes: [Bike] = [
    // Hero MotoCorp (ID: 1)
    Bike(companyID: 1, bikeName: "Hero Splendor Plus", launchYear: 1994, ccOfBike: 97, hpOfBike: 8.0),
    Bike(companyID: 1, bikeName: "Hero HF Deluxe", launchYear: 2010, ccOfBike: 97, hpOfBike: 8.0),
    Bike(companyID: 1, bikeName: "Hero Passion Pro", launchYear: 2001, ccOfBike: 110, hpOfBike: 9.0),
    Bike(companyID: 1, bikeName: "Hero Glamour", launchYear: 2005, ccOfBike: 125, hpOfBike: 11.0),
    Bike(companyID: 1, bikeName: "Hero Xpulse 200", launchYear: 2019, ccOfBike: 200, hpOfBike: 18.0),
    
    // Bajaj Auto (ID: 2)
    Bike(companyID: 2, bikeName: "Bajaj Pulsar 150", launchYear: 2001, ccOfBike: 149, hpOfBike: 14.0),
    Bike(companyID: 2, bikeName: "Bajaj Platina", launchYear: 2006, ccOfBike: 102, hpOfBike: 8.0),
    Bike(companyID: 2, bikeName: "Bajaj CT 100", launchYear: 2004, ccOfBike: 100, hpOfBike: 8.0),
    Bike(companyID: 2, bikeName: "Bajaj Avenger 220", launchYear: 2005, ccOfBike: 220, hpOfBike: 18.0),
    Bike(companyID: 2, bikeName: "Bajaj Dominar 400", launchYear: 2016, ccOfBike: 373, hpOfBike: 39.0),
    
    // TVS Motor (ID: 3)
    Bike(companyID: 3, bikeName: "TVS Apache RTR 160", launchYear: 2006, ccOfBike: 159, hpOfBike: 15.0),
    Bike(companyID: 3, bikeName: "TVS Apache RTR 200 4V", launchYear: 2016, ccOfBike: 197, hpOfBike: 20.0),
    Bike(companyID: 3, bikeName: "TVS Star City Plus", launchYear: 2014, ccOfBike: 109, hpOfBike: 8.4),
    Bike(companyID: 3, bikeName: "TVS Jupiter", launchYear: 2013, ccOfBike: 110, hpOfBike: 7.8),
    Bike(companyID: 3, bikeName: "TVS XL100", launchYear: 2016, ccOfBike: 99, hpOfBike: 4.3),
    
    // Royal Enfield (ID: 4)
    Bike(companyID: 4, bikeName: "Royal Enfield Classic 350", launchYear: 2009, ccOfBike: 346, hpOfBike: 19.8),
    Bike(companyID: 4, bikeName: "Royal Enfield Bullet 350", launchYear: 1932, ccOfBike: 346, hpOfBike: 19.8),
    Bike(companyID: 4, bikeName: "Royal Enfield Himalayan", launchYear: 2016, ccOfBike: 411, hpOfBike: 24.5),
    Bike(companyID: 4, bikeName: "Royal Enfield Interceptor 650", launchYear: 2018, ccOfBike: 648, hpOfBike: 47.0),
    Bike(companyID: 4, bikeName: "Royal Enfield Continental GT 650", launchYear: 2018, ccOfBike: 648, hpOfBike: 47.0),
    
    // Honda Motorcycle & Scooter India (ID: 5)
    Bike(companyID: 5, bikeName: "Honda Activa", launchYear: 2000, ccOfBike: 110, hpOfBike: 8.0),
    Bike(companyID: 5, bikeName: "Honda Shine", launchYear: 2006, ccOfBike: 125, hpOfBike: 10.5),
    Bike(companyID: 5, bikeName: "Honda CB Hornet 160R", launchYear: 2015, ccOfBike: 163, hpOfBike: 15.0),
    Bike(companyID: 5, bikeName: "Honda Unicorn", launchYear: 2004, ccOfBike: 150, hpOfBike: 12.7),
    Bike(companyID: 5, bikeName: "Honda CB350 H'ness", launchYear: 2020, ccOfBike: 348, hpOfBike: 21.0),
    
    // Yamaha Motor India (ID: 6)
    Bike(companyID: 6, bikeName: "Yamaha FZ-S Fi", launchYear: 2008, ccOfBike: 149, hpOfBike: 13.0),
    Bike(companyID: 6, bikeName: "Yamaha R15 V4", launchYear: 2021, ccOfBike: 155, hpOfBike: 18.3),
    Bike(companyID: 6, bikeName: "Yamaha MT-15", launchYear: 2019, ccOfBike: 155, hpOfBike: 18.5),
    Bike(companyID: 6, bikeName: "Yamaha Fascino", launchYear: 2015, ccOfBike: 113, hpOfBike: 8.0),
    Bike(companyID: 6, bikeName: "Yamaha Ray-ZR", launchYear: 2016, ccOfBike: 125, hpOfBike: 8.2),
    
    // Suzuki Motorcycle India (ID: 7)
    Bike(companyID: 7, bikeName: "Suzuki Gixxer", launchYear: 2014, ccOfBike: 155, hpOfBike: 14.1),
    Bike(companyID: 7, bikeName: "Suzuki Access 125", launchYear: 2007, ccOfBike: 124, hpOfBike: 8.7),
    Bike(companyID: 7, bikeName: "Suzuki Burgman Street", launchYear: 2018, ccOfBike: 124, hpOfBike: 8.7),
    Bike(companyID: 7, bikeName: "Suzuki Intruder 150", launchYear: 2017, ccOfBike: 155, hpOfBike: 14.6),
    Bike(companyID: 7, bikeName: "Suzuki Hayate", launchYear: 2012, ccOfBike: 113, hpOfBike: 8.3),
    
    // KTM India (ID: 8)
    Bike(companyID: 8, bikeName: "KTM Duke 200", launchYear: 2012, ccOfBike: 200, hpOfBike: 25.0),
    Bike(companyID: 8, bikeName: "KTM Duke 390", launchYear: 2013, ccOfBike: 373, hpOfBike: 43.5),
    Bike(companyID: 8, bikeName: "KTM RC 200", launchYear: 2014, ccOfBike: 200, hpOfBike: 25.0),
    Bike(companyID: 8, bikeName: "KTM RC 390", launchYear: 2014, ccOfBike: 373, hpOfBike: 43.5),
    Bike(companyID: 8, bikeName: "KTM 125 Duke", launchYear: 2018, ccOfBike: 125, hpOfBike: 14.5),
    
    // Jawa Motorcycles (ID: 9)
    Bike(companyID: 9, bikeName: "Jawa Classic", launchYear: 2018, ccOfBike: 293, hpOfBike: 27.0),
    Bike(companyID: 9, bikeName: "Jawa 42", launchYear: 2018, ccOfBike: 293, hpOfBike: 27.0),
    Bike(companyID: 9, bikeName: "Jawa Perak", launchYear: 2020, ccOfBike: 334, hpOfBike: 30.0),
    Bike(companyID: 9, bikeName: "Jawa 42 2.1", launchYear: 2021, ccOfBike: 293, hpOfBike: 27.0),
    Bike(companyID: 9, bikeName: "Jawa Black Edition", launchYear: 2019, ccOfBike: 293, hpOfBike: 27.0),
    
    // Triumph Motorcycles India (ID: 10)
    Bike(companyID: 10, bikeName: "Triumph Street Twin", launchYear: 2016, ccOfBike: 900, hpOfBike: 64.0),
    Bike(companyID: 10, bikeName: "Triumph Bonneville T120", launchYear: 2016, ccOfBike: 1200, hpOfBike: 79.0),
    Bike(companyID: 10, bikeName: "Triumph Street Triple", launchYear: 2007, ccOfBike: 765, hpOfBike: 118.0),
    Bike(companyID: 10, bikeName: "Triumph Tiger 800", launchYear: 2010, ccOfBike: 800, hpOfBike: 94.0),
    Bike(companyID: 10, bikeName: "Triumph Rocket 3", launchYear: 2019, ccOfBike: 2500, hpOfBike: 167.0)
]
