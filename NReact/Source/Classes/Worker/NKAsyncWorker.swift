//
//  NKAsyncWorker.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

open class NKAsyncWorker<T>: NSObject, NKAsyncWorkable {
    
    public typealias WorkType = T
    
    open func execute() -> Observable<WorkType> {
        fatalError("Function hasn't implemented yet.")
    }
}
