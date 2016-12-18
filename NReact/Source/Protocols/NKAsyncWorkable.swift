//
//  NKWorkable.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import Foundation
import RxSwift

public protocol NKAsyncWorkable {
    associatedtype WorkType
    func execute() -> Observable<WorkType>
}
