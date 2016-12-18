//
//  NKSyncWorkable.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation

public protocol NKSyncWorkable {
    associatedtype NKWorkType
    associatedtype NKPayload
    func execute(with payload: NKPayload) -> NKWorkType
}
