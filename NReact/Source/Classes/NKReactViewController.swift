//
//  NKReactViewController.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import UIKit

open class NKReactViewController<S, A>: UIViewController {
    public let reactor: NKReactor<S, A>
    
    public init(reactor: NKReactor<S, A>) {
        self.reactor = reactor
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        self.setupState()
        self.setupRx()
    }
    
    open func setupState() {
        
    }
    
    open func setupRx() {
        
    }
    
}

