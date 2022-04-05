//
//  SumViewModel.swift
//  Mais2
//
//  Created by user212279 on 05/04/22.
//

import Foundation

class SumViewModel {
    
    public func showNumberAndResult (numberInserted: Double)-> Sum {
        let result = numberInserted + 2
        return Sum(number: numberInserted, result: result)
    }
}


