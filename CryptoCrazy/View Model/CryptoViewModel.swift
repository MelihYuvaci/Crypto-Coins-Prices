//
//  CryptoViewModel.swift
//  CryptoCrazy
//
//  Created by Melih Yuvacı on 18.05.2022.
//

import Foundation

struct CryptoListViewModel{
    
    let cryptoCurrencyList : [CryptoCurrency]
    
    func numberOfRowsInSection () -> Int{
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex (_ index:Int)-> CryptoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
}

extension String{
    func printMyName(){
        print("Melih Yuvacı")
    }
}

extension CryptoListViewModel {
    /*
    func numberOfRowsInSection () -> Int{
        return self.cryptoCurrencyList.count
    }
    
    func cryptoAtIndex (_ index:Int)-> CryptoViewModel{
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
    */
}

struct CryptoViewModel{
    let cryptoCurrency : CryptoCurrency
    
    var name : String {
        return  self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
}

extension CryptoViewModel{
    /*
    var name : String {
        return  self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
     */
}
 
