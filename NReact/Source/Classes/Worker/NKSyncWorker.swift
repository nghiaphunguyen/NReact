//
//  NKSyncWorker.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation

open class NKSyncWorker<T, P>: NSObject, NKSyncWorkable {
    
    public typealias NKWorkType = T
    public typealias NKPayload = P
    
    open func execute(with payload: P) -> T {
        fatalError("Function hasn't implemented yet.")
    }
}
