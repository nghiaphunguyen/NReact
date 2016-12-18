//
//  NKSyncWorkable.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation

public protocol NKSyncWorkable {
    associatedtype WorkType
    func execute() -> WorkType
}
