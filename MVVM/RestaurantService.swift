//
//  RestaurantService.swift
//  MVVM
//
//  Created by Mohamed osama on 18/11/2021.
//

import Foundation
import RxSwift

protocol RestuarantServiceProtocol{
    func fetchRestuarants() -> Observable<[Restaurant]>
}


class RestaurantService: RestuarantServiceProtocol{
    
    static let shared = RestaurantService()
    
    func fetchRestuarants() -> Observable<[Restaurant]>{
        
        return Observable.create { observer in
            
            guard let path = Bundle.main.url(forResource: "resuarants", withExtension: "json") else {
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                return Disposables.create()
            }
            do{
                
                let data = try Data(contentsOf: path , options: .mappedIfSafe)
                let decodedData = try JSONDecoder().decode([Restaurant].self, from: data)
                observer.onNext(decodedData)
            }catch (let error){
                print(error.localizedDescription)
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                return Disposables.create()
            }
            return Disposables.create()
        }.asObservable()
    }
    
    
}
