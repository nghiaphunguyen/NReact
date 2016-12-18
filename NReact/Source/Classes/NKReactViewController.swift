//
//  NKReactViewController.swift
//  NReact
//
//  Created by Nghia Nguyen on 12/18/16.
//  Copyright © 2016 Nghia Nguyen. All rights reserved.
//

import UIKit

open class NKReactViewController<Reactor: NKReactable>: UIViewController {
    public let reactor: Reactor
    
    public init(reactor: Reactor) {
        
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
