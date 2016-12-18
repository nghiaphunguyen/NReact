//
//  NKStore.swift
//  NKit
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

open class NKStore<State: NKInitable>: NSObject, NKStorable {
    public typealias NKState = State
    
    open let rx_state = Variable<State>(NKState())
}
