//
//  NKAsyncWorker.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

open class NKAsyncWorker<T, P>: NSObject, NKAsyncWorkable {
    
    public typealias NKWorkType = T
    public typealias NKPayload = P
    
    open func execute(with payload: P) -> Observable<T> {
        fatalError("Function hasn't implemented yet.")
    }
}
