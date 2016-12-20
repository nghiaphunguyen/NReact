//
//  NKReactViewController.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import UIKit

open class NKReactViewController<State: NKInitable, Action>: UIViewController {
    public let reactor: NKReactor<State, Action>
    
    public init(reactor: NKReactor<State, Action>) {
        
        self.reactor = reactor
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.setupState()
    }
    
    open func setupState() {}
}
