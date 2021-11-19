//
//  Restaurant.swift
//  MVVM
//
//  Created by Mohamed osama on 18/11/2021.
//

import Foundation


class Restaurant: Decodable{
    
    var name: String?
    var cuisine: String?
    
    init(name: String , cuisine: String){
        self.name = name
        self.cuisine = cuisine
    }
}
