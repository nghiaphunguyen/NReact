//
//  NKJustAsyncWorker.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

open class NKJustAsyncWorker<T> : NKAsyncWorker<T> {
    let value: T
    
    public init(value: T) {
        self.value = value
        
        super.init()
    }
    
    open override func execute() -> Observable<T> {
        return Observable.just(self.value)
    }
}
