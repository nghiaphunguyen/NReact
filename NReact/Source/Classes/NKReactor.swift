//
//  NKReactor.swift
//  NKit
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

public class NKReactor<Action, State: NKInitable>: NKStore<State> {
    public typealias NKAction = Action
    
    public var stateObservable: Observable<NKState> {
        return self.rx_state.asObservable().observeOn(MainScheduler.instance)
    }
}
