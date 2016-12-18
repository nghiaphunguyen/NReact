//
//  NKStoreable.swift
//  NKit
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation

public protocol NKStateMutable: NKStatable {
    func changeState(_ block: (inout NKState) -> Void)
}

