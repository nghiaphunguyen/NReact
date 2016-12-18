//
//  NKJustSyncWoker.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

open class NKJustSyncWorker<T, P> : NKSyncWorker<T, P> {
    let value: T
    
    public init(value: T) {
        self.value = value
        
        super.init()
    }
    
    override open func execute(with payload: NKPayload) -> T {
        return self.value
    }
}
