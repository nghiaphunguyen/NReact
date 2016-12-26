//
//  NKReactor.swift
//  NKit
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

open class NKReactor<State, Action>: NSObject, NKReactable {
    open var state: State {
        return self as! State
    }
    
    open var action: Action {
        return self as! Action
    }
}
