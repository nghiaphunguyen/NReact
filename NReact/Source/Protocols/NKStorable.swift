//
//  NKStorable.swift
//  NKit
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

public protocol NKStorable: NKStateMutable {
    var rx_state: Variable<NKState> {get}
}

public extension NKStorable {
    public var stateObservable: Observable<NKState> {
        return self.rx_state.asObservable()
    }
    
    public var state: NKState {
        get {
            return self.rx_state.value
        }
    }
    
    public func changeState(_ block: (inout NKState) -> Void) {
        block(&self.rx_state.value)
    }
}
