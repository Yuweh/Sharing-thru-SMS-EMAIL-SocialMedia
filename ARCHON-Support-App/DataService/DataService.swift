//
//  File.swift
//  ARCHON-Support-App
//
//  Created by Francis Jemuel Bergonia on 11/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    //Dictionary to Populate Rows for JOB LEVELS
    private let categories = [
        Category(title: "Fresh Graduates", imageName: "freshGrad.png"),
        Category(title: "Jr. Developers", imageName: "juniorDev.png"),
        Category(title: "Sr. Developers", imageName: "seniorDev.png"),
        Category(title: "IT Bussines Support", imageName: "businessSupport.png"),
        Category(title: "Non-IT Positions", imageName: "nonITPost.png"),
        ]
    
    private let openings = [
        Product(title: ".NET Developer", imageName: "cSharp.png"),
        Product(title: "JAVA Developer", imageName: "java.png"),
        Product(title: "Android Developer", imageName: "android.png"),
        Product(title: "iOS App Developer", imageName: "apple.png"),
        Product(title: "Angular Developer", imageName: "angular.png"),
        Product(title: "PHP Developer", imageName: "php.png"),
        ]
    
    //MARK: Related Functions
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts() -> [Product] {
        return openings
    }
    
}
