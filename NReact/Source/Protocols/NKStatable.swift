//
//  NKModelable.swift
//  NKit
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

public protocol NKStatable {
    associatedtype NKState: NKInitable
    
    var stateObservable: Observable<NKState> {get}
    var state: NKState {get}
}
