//
//  WebService.swift
//  CryptoCrazy
//
//  Created by Melih Yuvacı on 18.05.2022.
//

import Foundation

class WebService {
    
    func downloadCurriencies(url:URL, completion: @escaping([CryptoCurrency]?)->()){
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error{
                print(error.localizedDescription)
                completion(nil)
            }else if let data = data{
                let cryptoList = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
                completion(cryptoList)
                
                print(cryptoList)
                
                if let cryptoList = cryptoList{
                    completion(cryptoList)
                }
            }
        }.resume()
        
    }
    
}
