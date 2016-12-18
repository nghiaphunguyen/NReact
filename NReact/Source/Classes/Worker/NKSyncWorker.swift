//
//  NKSyncWorker.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation

open class NKSyncWorker<T>: NSObject, NKSyncWorkable {
    
    public typealias WorkType = T
    
    open func execute() -> T {
        fatalError("Function hasn't implemented yet.")
    }
}
